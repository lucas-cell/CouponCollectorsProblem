"""
Description
------------ 
    A helper class to run an analysis on the coupon collector
    problem 

"""
import random as rd
import pandas as pd

class CollectCoupons:

    def __init__(self, num_uniques):
        self.num_uniques = num_uniques
        self.coupons_list = []
        self.uniques_list = []
        self.winning_list = []
        self.purchase_list = []

    # Generate the winning list of coupons needed to win the prize. 
    def generate_winning_set(self):
        print("Total number of unique coupons needed to collect: ", str(self.num_uniques))
        self.winning_list = range(1, self.num_uniques + 1)
        return self.winning_list

    # Buy an ice cream and collect the corresponding coupon
    def buy_ice_cream(self):
        coupon = rd.randint(1, self.num_uniques)
        self.coupons_list.append(coupon)
        return self.coupons_list

    # Fiter repeating coupons
    def check_coupons(self):
        for coupon in self.coupons_list:
            if coupon not in self.uniques_list:
                self.uniques_list.append(coupon)
        return self.uniques_list

    # Buy icecreams until all coupons are collected
    def play(self):
        # Used as a counter for the total purchases to win the game. 
        total_purchases = 0
    
        # Generate winning tickets
        self.generate_winning_set()
    
        # Buy ice creams until the set of winning tickets is collected. 
        while self.uniques_list != self.winning_list:
            # collect a coupon
            self.buy_ice_cream()
        
            # Increase counter by 1
            total_purchases += 1
        
            # filter the coupons
            self.check_coupons()
        
            # sort the coupons
            self.uniques_list.sort()
        
            # If the uniques equals the winning set, the costumer won the prize
            if(self.uniques_list == self.winning_list):
                self.purchase_list.append(total_purchases)
                break
CC = CollectCoupons(10)
CC.play()