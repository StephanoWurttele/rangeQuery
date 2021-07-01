#include "QuadTree.h"
#include <memory>
#include <iostream>
#include <vector>
#include <algorithm>

namespace utec
{
namespace spatial
{

template<typename Node, typename Rectangle, typename Point>
QuadTree<Node, Rectangle, Point>::QuadTree(){
    this->root=nullptr;
}

template<typename Node, typename Rectangle, typename Point>
void QuadTree<Node, Rectangle, Point>::insert(Point new_point){
    std::shared_ptr<Node>& target = search(new_point, this->root);
    if(target==nullptr){
        target=std::make_shared<Node>(new_point);
    }
}

template<typename Node, typename Rectangle, typename Point>
std::shared_ptr<Node>& QuadTree<Node, Rectangle, Point>::search(Point target, std::shared_ptr<Node>& node){
    if(node == nullptr){
        return node; //not found
    } else if(node->get_point() == target){
        return node;
    }
    
    auto cur_point = node->get_point();

    const int x=0, y=1;

    if(target.get(x) < cur_point.get(x)){
        if(target.get(y) > cur_point.get(y))
            return search(target, node->NW());
        else
            return search(target, node->SW());
    }else{
        if(target.get(y) > cur_point.get(y))
            return search(target, node->NE());
        else
            return search(target, node->SE());
    }
}

template<typename Node, typename Rectangle, typename Point>
std::shared_ptr<Node> QuadTree<Node, Rectangle, Point>::search(Point target){
    return search(target, this->root);
}

template<typename Node, typename Rectangle, typename Point>
bool QuadTree<Node, Rectangle, Point>::containsPoint(Point target, Rectangle region) {
    const int x=0, y=1;
    return target.get(x) >= region._min.get(x)
        && target.get(x) <= region._max.get(x)
        && target.get(y) >= region._min.get(y) 
        && target.get(y) <= region._max.get(y);
}

template<typename Node, typename Rectangle, typename Point>
std::vector<Point> QuadTree<Node, Rectangle, Point>::range_recursive(std::shared_ptr<Node>& node, Rectangle region){
    const int x=0, y=1;
    std::vector<Point> response = {};
    std::vector<Point> temp;
    if(node == nullptr)
        return std::vector<Point>();
    if(this->containsPoint(node->get_point(), region)){
        response = {node->get_point()};
        temp = range_recursive(node->NW(), region);
        response.insert(response.end(), temp.begin(), temp.end());
        temp = range_recursive(node->NE(), region);
        response.insert(response.end(), temp.begin(), temp.end());
        temp = range_recursive(node->SW(), region);
        response.insert(response.end(), temp.begin(), temp.end());
        temp = range_recursive(node->SE(), region);
        response.insert(response.end(), temp.begin(), temp.end());
        return response;
    }
    else{
        if(region._max.get(x) >= node->get_point().get(x) && region._max.get(y) > node->get_point().get(y)){
            temp = range_recursive(node->SE(), region);
            response.insert(response.begin(), temp.begin(), temp.end());
            if(region._min.get(x) < node->get_point().get(x)){
                temp = range_recursive(node->NW(), region);
                response.insert(response.begin(), temp.begin(), temp.end());
            }else if(region._min.get(y) <= node->get_point().get(y)){
                temp = range_recursive(node->SE(), region);
                response.insert(response.begin(), temp.begin(), temp.end());
            }
        }
        else if(region._max.get(x) < node->get_point().get(x) && region._max.get(y) > node->get_point().get(y)){
            temp = range_recursive(node->NW(), region);
            response.insert(response.begin(), temp.begin(), temp.end());
            if(region._min.get(y) <= node->get_point().get(y)){
                temp = range_recursive(node->SW(), region);
                response.insert(response.begin(), temp.begin(), temp.end());
            }
        }
        else if(region._min < node->get_point()){
            temp = range_recursive(node->SW(), region);
            response.insert(response.begin(), temp.begin(), temp.end());
            if(region._max.get(x) >= node->get_point().get(x)){
                temp = range_recursive(node->SE(), region);
                response.insert(response.begin(), temp.begin(), temp.end());
            }
        }
        else if(region._max.get(y) <= node->get_point().get(y)){
            if(region._min.get(x) <= node->get_point().get(x)){
                temp = range_recursive(node->SW(), region);
                response.insert(response.begin(), temp.begin(), temp.end());
            }
            if(region._max.get(x) >= node->get_point().get(x)){
                temp = range_recursive(node->SE(), region);
                response.insert(response.begin(), temp.begin(), temp.end());
            }
        }
        else{
            temp = range_recursive(node->SE(), region);
            response.insert(response.begin(), temp.begin(), temp.end());
        }
    }
    return response;
}

template<typename Node, typename Rectangle, typename Point>
std::vector<Point> QuadTree<Node, Rectangle, Point>::range(Rectangle region){
    // std::vector<Point> temp = range_recursive(this->root, region);
    // std::sort(temp.begin(), temp.end());
    // int count = std::distance(temp.begin(), std::unique(temp.begin(), temp.end()));
    // std::vector<Point> result;
    // for(int i = 0; i < count; ++i)
    //     result.push_back(temp[i]);
    // return result;
    return range_recursive(this->root, region);
}

template<typename Node, typename Rectangle, typename Point>
Point QuadTree<Node, Rectangle, Point>::nearest_neighbor(Point reference){
    // TODO
}

} //spatial
} //utec
