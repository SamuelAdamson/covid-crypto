/*  
    Bigquery Public Dataset Queries
     - Queries in this file were used to curate data specific to the focus of this project -

    Datasets:
        COVID-19 Data Repository by CSSE at JHU -- covid19_jhu_csse
        Ethereum Cryptocurrency -- crypto_ethereum
        Bitcoin Cryptocurrency -- crypto_bitcoin
*/

/* 
    Dataset: covid19_jhu_csse
    Table: confirmed_cases  
    Result: Sum of confirmed cases in one week periods ranging from 01/22/2020 - 11/29/2021    
*/
SELECT
  (SUM(_1_22_20) + SUM(_1_23_20) + SUM(_1_24_20) + SUM(_1_25_20) + SUM(_1_26_20) + SUM(_1_27_20) + SUM(_1_28_20)) as _20210122_20200128,
  (SUM(_1_29_20) + SUM(_1_30_20) + SUM(_1_31_20) + SUM(_2_1_20) + SUM(_2_2_20) + SUM(_2_2_20) + SUM(_2_3_20)) as _20200129_20200203,
  (SUM(_2_4_20) + SUM(_2_5_20) + SUM(_2_6_20) + SUM(_2_7_20) + SUM(_2_8_20) + SUM(_2_9_20) + SUM(_2_10_20)) as _20200204_20200210,
  (SUM(_2_11_20) + SUM(_2_12_20) + SUM(_2_13_20) + SUM(_2_14_20) + SUM(_2_15_20) + SUM(_2_16_20) + SUM(_2_17_20)) as _20200211_20200217,
  (SUM(_2_18_20) + SUM(_2_19_20) + SUM(_2_20_20) + SUM(_2_21_20) + SUM(_2_22_20) + SUM(_2_23_20) + SUM(_2_24_20)) as _20200218_20200224,
  (SUM(_2_25_20) + SUM(_2_26_20) + SUM(_2_27_20) + SUM(_2_28_20) + SUM(_3_1_20) + SUM(_3_2_20) + SUM(_3_3_20)) as _20200225_20200303,
  (SUM(_3_4_20) + SUM(_3_5_20) + SUM(_3_6_20) + SUM(_3_7_20) + SUM(_3_8_20) + SUM(_3_9_20) + SUM(_3_10_20)) as _20200304_20200310,
  (SUM(_3_11_20) + SUM(_3_12_20) + SUM(_3_13_20) + SUM(_3_14_20) + SUM(_3_15_20) + SUM(_3_16_20) + SUM(_3_17_20)) as _20200311_20200317,
  (SUM(_3_18_20) + SUM(_3_19_20) + SUM(_3_20_20) + SUM(_3_21_20) + SUM(_3_22_20) + SUM(_3_23_20) + SUM(_3_24_20)) as _20200318_20200324,
  (SUM(_3_25_20) + SUM(_3_26_20) + SUM(_3_27_20) + SUM(_3_28_20) + SUM(_3_29_20) + SUM(_3_30_20) + SUM(_3_31_20)) as _20200325_20200331,
  (SUM(_4_1_20) + SUM(_4_2_20) + SUM(_4_3_20) + SUM(_4_4_20) + SUM(_4_5_20) + SUM(_4_6_20) + SUM(_4_7_20)) as _20200401_20200407,
  (SUM(_4_8_20) + SUM(_4_9_20) + SUM(_4_10_20) + SUM(_4_11_20) + SUM(_4_12_20) + SUM(_4_13_20) + SUM(_4_14_20)) as _20200408_20200414,
  (SUM(_4_15_20) + SUM(_4_16_20) + SUM(_4_17_20) + SUM(_4_18_20) + SUM(_4_19_20) + SUM(_4_20_20) + SUM(_4_21_20)) as _20200415_20200421,
  (SUM(_4_22_20) + SUM(_4_23_20) + SUM(_4_24_20) + SUM(_4_25_20) + SUM(_4_26_20) + SUM(_4_27_20) + SUM(_4_28_20)) as _20200422_20200428,
  (SUM(_4_29_20) + SUM(_4_30_20) + SUM(_5_1_20) + SUM(_5_2_20) + SUM(_5_3_20) + SUM(_5_4_20) + SUM(_5_5_20)) as _20200429_20200505,
  (SUM(_5_6_20) + SUM(_5_6_20) + SUM(_5_7_20) + SUM(_5_8_20) + SUM(_5_9_20) + SUM(_5_10_20) + SUM(_5_11_20)) as _20200506_20200511,
  (SUM(_5_12_20) + SUM(_5_13_20) + SUM(_5_14_20) + SUM(_5_15_20) + SUM(_5_16_20) + SUM(_5_17_20) + SUM(_5_18_20)) as _20200512_20200518,
  (SUM(_5_19_20) + SUM(_5_20_20) + SUM(_5_21_20) + SUM(_5_22_20) + SUM(_5_23_20) + SUM(_5_24_20) + SUM(_5_25_20)) as _20200519_20200525,
  (SUM(_5_26_20) + SUM(_5_27_20) + SUM(_5_28_20) + SUM(_5_29_20) + SUM(_5_30_20) + SUM(_5_31_20) + SUM(_6_1_20)) as _20200526_20200601,
  (SUM(_6_2_20) + SUM(_6_3_20) + SUM(_6_4_20) + SUM(_6_5_20) + SUM(_6_6_20) + SUM(_6_7_20) + SUM(_6_8_20)) as _20200602_20200608,
  (SUM(_6_9_20) + SUM(_6_10_20) + SUM(_6_11_20) + SUM(_6_12_20) + SUM(_6_13_20) + SUM(_6_14_20) + SUM(_6_15_20)) as _20200609_20200615,
  (SUM(_6_16_20) + SUM(_6_17_20) + SUM(_6_18_20) + SUM(_6_19_20) + SUM(_6_20_20) + SUM(_6_21_20) + SUM(_6_22_20)) as _20200616_20200622,
  (SUM(_6_23_20) + SUM(_6_24_20) + SUM(_6_25_20) + SUM(_6_26_20) + SUM(_6_27_20) + SUM(_6_28_20) + SUM(_6_29_20)) as _20200623_20200629,
  (SUM(_6_30_20) + SUM(_7_1_20) + SUM(_7_2_20) + SUM(_7_3_20) + SUM(_7_4_20) + SUM(_7_5_20) + SUM(_7_6_20)) as _20200630_20200706,
  (SUM(_7_7_20) + SUM(_7_8_20) + SUM(_7_9_20) + SUM(_7_10_20) + SUM(_7_11_20) + SUM(_7_12_20) + SUM(_7_13_20)) as _20200707_20200713,
  (SUM(_7_14_20) + SUM(_7_15_20) + SUM(_7_16_20) + SUM(_7_17_20) + SUM(_7_18_20) + SUM(_7_19_20) + SUM(_7_20_20)) as _20200714_20200720,
  (SUM(_7_21_20) + SUM(_7_22_20) + SUM(_7_23_20) + SUM(_7_24_20) + SUM(_7_25_20) + SUM(_7_26_20) + SUM(_7_27_20)) as _20200721_20200727,
  (SUM(_7_28_20) + SUM(_7_29_20) + SUM(_7_30_20) + SUM(_7_31_20) + SUM(_8_1_20) + SUM(_8_2_20) + SUM(_8_3_20)) as _20200728_20200803,
  (SUM(_8_4_20) + SUM(_8_5_20) + SUM(_8_6_20) + SUM(_8_7_20) + SUM(_8_8_20) + SUM(_8_9_20) + SUM(_8_10_20)) as _20200804_20200810,
  (SUM(_8_11_20) + SUM(_8_12_20) + SUM(_8_13_20) + SUM(_8_14_20) + SUM(_8_15_20) + SUM(_8_16_20) + SUM(_8_17_20)) as _20200811_20200817,
  (SUM(_8_18_20) + SUM(_8_19_20) + SUM(_8_20_20) + SUM(_8_21_20) + SUM(_8_22_20) + SUM(_8_23_20) + SUM(_8_24_20)) as _20200818_20200824,
  (SUM(_8_25_20) + SUM(_8_26_20) + SUM(_8_27_20) + SUM(_8_28_20) + SUM(_8_29_20) + SUM(_8_30_20) + SUM(_8_31_20)) as _20200825_20200831,
  (SUM(_9_1_20) + SUM(_9_2_20) + SUM(_9_3_20) + SUM(_9_4_20) + SUM(_9_5_20) + SUM(_9_6_20) + SUM(_9_7_20)) as _20200901_20200907,
  (SUM(_9_8_20) + SUM(_9_9_20) + SUM(_9_10_20) + SUM(_9_11_20) + SUM(_9_12_20) + SUM(_9_13_20) + SUM(_9_14_20)) as _20200908_20200914,
  (SUM(_9_15_20) + SUM(_9_16_20) + SUM(_9_17_20) + SUM(_9_18_20) + SUM(_9_19_20) + SUM(_9_20_20) + SUM(_9_21_20)) as _20200915_20200921,
  (SUM(_9_22_20) + SUM(_9_23_20) + SUM(_9_24_20) + SUM(_9_25_20) + SUM(_9_26_20) + SUM(_9_27_20) + SUM(_9_28_20)) as _20200922_20200928,
  (SUM(_9_29_20) + SUM(_9_30_20) + SUM(_10_1_20) + SUM(_10_2_20) + SUM(_10_3_20) + SUM(_10_4_20) + SUM(_10_5_20)) as _20200929_20201005,
  (SUM(_10_6_20) + SUM(_10_7_20) + SUM(_10_8_20) + SUM(_10_9_20) + SUM(_10_10_20) + SUM(_10_11_20) + SUM(_10_12_20)) as _20201006_20201012,
  (SUM(_10_13_20) + SUM(_10_14_20) + SUM(_10_15_20) + SUM(_10_16_20) + SUM(_10_17_20) + SUM(_10_18_20) + SUM(_10_19_20)) as _20201013_20201019,
  (SUM(_10_20_20) + SUM(_10_21_20) + SUM(_10_22_20) + SUM(_10_23_20) + SUM(_10_24_20) + SUM(_10_25_20) + SUM(_10_26_20)) as _20201020_20201026,
  (SUM(_10_27_20) + SUM(_10_28_20) + SUM(_10_29_20) + SUM(_10_30_20) + SUM(_10_31_20) + SUM(_11_1_20) + SUM(_11_2_20)) as _20201027_20201102,
  (SUM(_11_3_20) + SUM(_11_4_20) + SUM(_11_5_20) + SUM(_11_6_20) + SUM(_11_7_20) + SUM(_11_8_20) + SUM(_11_9_20)) as _20201103_20201109,
  (SUM(_11_10_20) + SUM(_11_11_20) + SUM(_11_12_20) + SUM(_11_13_20) + SUM(_11_14_20) + SUM(_11_15_20) + SUM(_11_16_20)) as _20201110_20201116,
  (SUM(_11_17_20) + SUM(_11_18_20) + SUM(_11_19_20) + SUM(_11_20_20) + SUM(_11_21_20) + SUM(_11_22_20) + SUM(_11_23_20)) as _20201117_20201123,
  (SUM(_11_24_20) + SUM(_11_25_20) + SUM(_11_26_20) + SUM(_11_27_20) + SUM(_11_28_20) + SUM(_11_29_20) + SUM(_11_30_20)) as _20201124_20201130,
  (SUM(_12_1_20) + SUM(_12_2_20) + SUM(_12_3_20) + SUM(_12_4_20) + SUM(_12_5_20) + SUM(_12_6_20) + SUM(_12_7_20)) as _20201201_20201207,
  (SUM(_12_8_20) + SUM(_12_9_20) + SUM(_12_10_20) + SUM(_12_11_20) + SUM(_12_12_20) + SUM(_12_13_20) + SUM(_12_14_20)) as _20201208_20201214,
  (SUM(_12_15_20) + SUM(_12_16_20) + SUM(_12_17_20) + SUM(_12_18_20) + SUM(_12_19_20) + SUM(_12_20_20) + SUM(_12_21_20)) as _20201215_20201221,
  (SUM(_12_22_20) + SUM(_12_23_20) + SUM(_12_24_20) + SUM(_12_25_20) + SUM(_12_26_20) + SUM(_12_27_20) + SUM(_12_28_20)) as _20201222_20201228,
  (SUM(_12_29_20) + SUM(_12_30_20) + SUM(_12_31_20) + SUM(_1_1_21) + SUM(_1_2_21) + SUM(_1_3_21) + SUM(_1_4_21)) as _20201229_20210104,
  (SUM(_1_5_21) + SUM(_1_6_21) + SUM(_1_7_21) + SUM(_1_8_21) + SUM(_1_9_21) + SUM(_1_10_21) + SUM(_1_11_21)) as _20210105_20210111,
  (SUM(_1_12_21) + SUM(_1_13_21) + SUM(_1_14_21) + SUM(_1_15_21) + SUM(_1_16_21) + SUM(_1_17_21) + SUM(_1_18_21)) as _20210112_20210118,
  (SUM(_1_19_21) + SUM(_1_20_21) + SUM(_1_21_21) + SUM(_1_22_21) + SUM(_1_23_21) + SUM(_1_24_21) + SUM(_1_25_21)) as _20210119_20210125,
  (SUM(_1_26_21) + SUM(_1_27_21) + SUM(_1_28_21) + SUM(_1_29_21) + SUM(_1_30_21) + SUM(_1_31_21) + SUM(_2_1_21)) as _20210126_20210201,
  (SUM(_2_2_21) + SUM(_2_3_21) + SUM(_2_4_21) + SUM(_2_5_21) + SUM(_2_6_21) + SUM(_2_7_21) + SUM(_2_8_21)) as _20210202_20210208,
  (SUM(_2_9_21) + SUM(_2_10_21) + SUM(_2_11_21) + SUM(_2_12_21) + SUM(_2_13_21) + SUM(_2_14_21) + SUM(_2_15_21)) as _20210209_20210215,
  (SUM(_2_16_21) + SUM(_2_17_21) + SUM(_2_18_21) + SUM(_2_19_21) + SUM(_2_20_21) + SUM(_2_21_21) + SUM(_2_22_21)) as _20210216_20210222,
  (SUM(_2_23_21) + SUM(_2_24_21) + SUM(_2_25_21) + SUM(_2_26_21) + SUM(_2_27_21) + SUM(_2_28_21) + SUM(_3_1_21)) as _20210223_20210301,
  (SUM(_3_2_21) + SUM(_3_3_21) + SUM(_3_4_21) + SUM(_3_5_21) + SUM(_3_6_21) + SUM(_3_7_21) + SUM(_3_8_21)) as _20210302_20210308,
  (SUM(_3_9_21) + SUM(_3_10_21) + SUM(_3_11_21) + SUM(_3_12_21) + SUM(_3_13_21) + SUM(_3_14_21) + SUM(_3_15_21)) as _20210309_20210315,
  (SUM(_3_16_21) + SUM(_3_17_21) + SUM(_3_18_21) + SUM(_3_19_21) + SUM(_3_20_21) + SUM(_3_21_21) + SUM(_3_22_21)) as _20210316_20210322,
  (SUM(_3_23_21) + SUM(_3_24_21) + SUM(_3_25_21) + SUM(_3_26_21) + SUM(_3_27_21) + SUM(_3_28_21) + SUM(_3_29_21)) as _20210323_20210329,
  (SUM(_3_30_21) + SUM(_3_31_21) + SUM(_4_1_21) + SUM(_4_2_21) + SUM(_4_3_21) + SUM(_4_4_21) + SUM(_4_5_21)) as _20210330_20210405,
  (SUM(_4_6_21) + SUM(_4_7_21) + SUM(_4_8_21) + SUM(_4_9_21) + SUM(_4_10_21) + SUM(_4_11_21) + SUM(_4_12_21)) as _20210406_20210412,
  (SUM(_4_13_21) + SUM(_4_14_21) + SUM(_4_15_21) + SUM(_4_16_21) + SUM(_4_17_21) + SUM(_4_18_21) + SUM(_4_19_21)) as _20210413_20210419,
  (SUM(_4_20_21) + SUM(_4_21_21) + SUM(_4_22_21) + SUM(_4_23_21) + SUM(_4_24_21) + SUM(_4_25_21) + SUM(_4_26_21)) as _20210420_20210426,
  (SUM(_4_27_21) + SUM(_4_28_21) + SUM(_4_29_21) + SUM(_4_30_21) + SUM(_5_1_21) + SUM(_5_2_21) + SUM(_5_3_21)) as _20210427_20210503,
  (SUM(_5_4_21) + SUM(_5_5_21) + SUM(_5_6_21) + SUM(_5_7_21) + SUM(_5_8_21) + SUM(_5_9_21) + SUM(_5_10_21)) as _20210504_20210510,
  (SUM(_5_11_21) + SUM(_5_12_21) + SUM(_5_13_21) + SUM(_5_14_21) + SUM(_5_15_21) + SUM(_5_16_21) + SUM(_5_17_21)) as _20210511_20210517,
  (SUM(_5_18_21) + SUM(_5_19_21) + SUM(_5_20_21) + SUM(_5_21_21) + SUM(_5_22_21) + SUM(_5_23_21) + SUM(_5_24_21)) as _20210518_20210524,
  (SUM(_5_25_21) + SUM(_5_26_21) + SUM(_5_27_21) + SUM(_5_28_21) + SUM(_5_29_21) + SUM(_5_30_21) + SUM(_5_31_21)) as _20210525_20210531,
  (SUM(_6_1_21) + SUM(_6_2_21) + SUM(_6_3_21) + SUM(_6_4_21) + SUM(_6_5_21) + SUM(_6_6_21) + SUM(_6_7_21)) as _20210601_20210607,
  (SUM(_6_8_21) + SUM(_6_9_21) + SUM(_6_10_21) + SUM(_6_11_21) + SUM(_6_12_21) + SUM(_6_13_21) + SUM(_6_14_21)) as _20210608_20210614,
  (SUM(_6_15_21) + SUM(_6_16_21) + SUM(_6_17_21) + SUM(_6_18_21) + SUM(_6_19_21) + SUM(_6_20_21) + SUM(_6_21_21)) as _20210615_20210621,
  (SUM(_6_22_21) + SUM(_6_23_21) + SUM(_6_24_21) + SUM(_6_25_21) + SUM(_6_26_21) + SUM(_6_27_21) + SUM(_6_28_21)) as _20210622_20210628,
  (SUM(_6_29_21) + SUM(_6_30_21) + SUM(_7_1_21) + SUM(_7_2_21) + SUM(_7_3_21) + SUM(_7_4_21) + SUM(_7_5_21)) as _20210629_20210705,
  (SUM(_7_6_21) + SUM(_7_7_21) + SUM(_7_8_21) + SUM(_7_9_21) + SUM(_7_10_21) + SUM(_7_11_21) + SUM(_7_12_21)) as _20210706_20210712,
  (SUM(_7_13_21) + SUM(_7_14_21) + SUM(_7_15_21) + SUM(_7_16_21) + SUM(_7_17_21) + SUM(_7_18_21) + SUM(_7_19_21)) as _20210713_20210719,
  (SUM(_7_20_21) + SUM(_7_21_21) + SUM(_7_22_21) + SUM(_7_23_21) + SUM(_7_24_21) + SUM(_7_25_21) + SUM(_7_26_21)) as _20210720_20210726,
  (SUM(_7_27_21) + SUM(_7_28_21) + SUM(_7_29_21) + SUM(_7_30_21) + SUM(_7_31_21) + SUM(_8_1_21) + SUM(_8_2_21)) as _20210727_20210802,
  (SUM(_8_3_21) + SUM(_8_4_21) + SUM(_8_5_21) + SUM(_8_6_21) + SUM(_8_7_21) + SUM(_8_8_21) + SUM(_8_9_21)) as _20210803_20210809,
  (SUM(_8_10_21) + SUM(_8_11_21) + SUM(_8_12_21) + SUM(_8_13_21) + SUM(_8_14_21) + SUM(_8_15_21) + SUM(_8_16_21)) as _20210810_20210816,
  (SUM(_8_17_21) + SUM(_8_18_21) + SUM(_8_19_21) + SUM(_8_20_21) + SUM(_8_21_21) + SUM(_8_22_21) + SUM(_8_23_21)) as _20210817_20210823,
  (SUM(_8_24_21) + SUM(_8_25_21) + SUM(_8_26_21) + SUM(_8_27_21) + SUM(_8_28_21) + SUM(_8_29_21) + SUM(_8_30_21)) as _20210824_20210830,
  (SUM(_8_31_21) + SUM(_9_1_21) + SUM(_9_2_21) + SUM(_9_3_21) + SUM(_9_4_21) + SUM(_9_5_21) + SUM(_9_6_21)) as _20210831_20210906,
  (SUM(_9_7_21) + SUM(_9_8_21) + SUM(_9_9_21) + SUM(_9_10_21) + SUM(_9_11_21) + SUM(_9_12_21) + SUM(_9_13_21)) as _20210907_20210913,
  (SUM(_9_14_21) + SUM(_9_15_21) + SUM(_9_16_21) + SUM(_9_17_21) + SUM(_9_18_21) + SUM(_9_19_21) + SUM(_9_20_21)) as _20210914_20210920,
  (SUM(_9_21_21) + SUM(_9_22_21) + SUM(_9_23_21) + SUM(_9_24_21) + SUM(_9_25_21) + SUM(_9_26_21) + SUM(_9_27_21)) as _20210921_20210927,
  (SUM(_9_28_21) + SUM(_9_29_21) + SUM(_9_30_21) + SUM(_10_1_21) + SUM(_10_2_21) + SUM(_10_3_21) + SUM(_10_4_21)) as _20210928_20211004,
  (SUM(_10_5_21) + SUM(_10_6_21) + SUM(_10_7_21) + SUM(_10_8_21) + SUM(_10_9_21) + SUM(_10_10_21) + SUM(_10_11_21)) as _20211005_20211011,
  (SUM(_10_12_21) + SUM(_10_13_21) + SUM(_10_14_21) + SUM(_10_15_21) + SUM(_10_16_21) + SUM(_10_17_21) + SUM(_10_18_21)) as _20211012_20211018,
  (SUM(_10_19_21) + SUM(_10_20_21) + SUM(_10_21_21) + SUM(_10_22_21) + SUM(_10_23_21) + SUM(_10_24_21) + SUM(_10_25_21)) as _20211019_20211025,
  (SUM(_10_26_21) + SUM(_10_27_21) + SUM(_10_28_21) + SUM(_10_29_21) + SUM(_10_30_21) + SUM(_10_31_21) + SUM(_11_1_21)) as _20211026_20211101,
  (SUM(_11_2_21) + SUM(_11_3_21) + SUM(_11_4_21) + SUM(_11_5_21) + SUM(_11_6_21) + SUM(_11_7_21) + SUM(_11_8_21)) as _20211102_20211108,
  (SUM(_11_9_21) + SUM(_11_10_21) + SUM(_11_11_21) + SUM(_11_12_21) + SUM(_11_13_21) + SUM(_11_14_21) + SUM(_11_15_21)) as _20211109_20211115,
  (SUM(_11_16_21) + SUM(_11_17_21) + SUM(_11_18_21) + SUM(_11_19_21) + SUM(_11_20_21) + SUM(_11_21_21) + SUM(_11_22_21)) as _20211116_20211122,
  (SUM(_11_23_21) + SUM(_11_24_21) + SUM(_11_25_21) + SUM(_11_26_21) + SUM(_11_27_21) + SUM(_11_28_21) + SUM(_11_29_21)) as _20211123_20211129
FROM
  `bigquery-public-data.covid19_jhu_csse.confirmed_cases`


/* 
    Dataset: covid19_jhu_csse
    Table: deaths  
    Result: Sum of deaths in one week periods ranging from 01/22/2020 - 11/29/2021    
*/
SELECT
  (SUM(_1_22_20) + SUM(_1_23_20) + SUM(_1_24_20) + SUM(_1_25_20) + SUM(_1_26_20) + SUM(_1_27_20) + SUM(_1_28_20)) as _20210122_20200128,
  (SUM(_1_29_20) + SUM(_1_30_20) + SUM(_1_31_20) + SUM(_2_1_20) + SUM(_2_2_20) + SUM(_2_2_20) + SUM(_2_3_20)) as _20200129_20200203,
  (SUM(_2_4_20) + SUM(_2_5_20) + SUM(_2_6_20) + SUM(_2_7_20) + SUM(_2_8_20) + SUM(_2_9_20) + SUM(_2_10_20)) as _20200204_20200210,
  (SUM(_2_11_20) + SUM(_2_12_20) + SUM(_2_13_20) + SUM(_2_14_20) + SUM(_2_15_20) + SUM(_2_16_20) + SUM(_2_17_20)) as _20200211_20200217,
  (SUM(_2_18_20) + SUM(_2_19_20) + SUM(_2_20_20) + SUM(_2_21_20) + SUM(_2_22_20) + SUM(_2_23_20) + SUM(_2_24_20)) as _20200218_20200224,
  (SUM(_2_25_20) + SUM(_2_26_20) + SUM(_2_27_20) + SUM(_2_28_20) + SUM(_3_1_20) + SUM(_3_2_20) + SUM(_3_3_20)) as _20200225_20200303,
  (SUM(_3_4_20) + SUM(_3_5_20) + SUM(_3_6_20) + SUM(_3_7_20) + SUM(_3_8_20) + SUM(_3_9_20) + SUM(_3_10_20)) as _20200304_20200310,
  (SUM(_3_11_20) + SUM(_3_12_20) + SUM(_3_13_20) + SUM(_3_14_20) + SUM(_3_15_20) + SUM(_3_16_20) + SUM(_3_17_20)) as _20200311_20200317,
  (SUM(_3_18_20) + SUM(_3_19_20) + SUM(_3_20_20) + SUM(_3_21_20) + SUM(_3_22_20) + SUM(_3_23_20) + SUM(_3_24_20)) as _20200318_20200324,
  (SUM(_3_25_20) + SUM(_3_26_20) + SUM(_3_27_20) + SUM(_3_28_20) + SUM(_3_29_20) + SUM(_3_30_20) + SUM(_3_31_20)) as _20200325_20200331,
  (SUM(_4_1_20) + SUM(_4_2_20) + SUM(_4_3_20) + SUM(_4_4_20) + SUM(_4_5_20) + SUM(_4_6_20) + SUM(_4_7_20)) as _20200401_20200407,
  (SUM(_4_8_20) + SUM(_4_9_20) + SUM(_4_10_20) + SUM(_4_11_20) + SUM(_4_12_20) + SUM(_4_13_20) + SUM(_4_14_20)) as _20200408_20200414,
  (SUM(_4_15_20) + SUM(_4_16_20) + SUM(_4_17_20) + SUM(_4_18_20) + SUM(_4_19_20) + SUM(_4_20_20) + SUM(_4_21_20)) as _20200415_20200421,
  (SUM(_4_22_20) + SUM(_4_23_20) + SUM(_4_24_20) + SUM(_4_25_20) + SUM(_4_26_20) + SUM(_4_27_20) + SUM(_4_28_20)) as _20200422_20200428,
  (SUM(_4_29_20) + SUM(_4_30_20) + SUM(_5_1_20) + SUM(_5_2_20) + SUM(_5_3_20) + SUM(_5_4_20) + SUM(_5_5_20)) as _20200429_20200505,
  (SUM(_5_6_20) + SUM(_5_6_20) + SUM(_5_7_20) + SUM(_5_8_20) + SUM(_5_9_20) + SUM(_5_10_20) + SUM(_5_11_20)) as _20200506_20200511,
  (SUM(_5_12_20) + SUM(_5_13_20) + SUM(_5_14_20) + SUM(_5_15_20) + SUM(_5_16_20) + SUM(_5_17_20) + SUM(_5_18_20)) as _20200512_20200518,
  (SUM(_5_19_20) + SUM(_5_20_20) + SUM(_5_21_20) + SUM(_5_22_20) + SUM(_5_23_20) + SUM(_5_24_20) + SUM(_5_25_20)) as _20200519_20200525,
  (SUM(_5_26_20) + SUM(_5_27_20) + SUM(_5_28_20) + SUM(_5_29_20) + SUM(_5_30_20) + SUM(_5_31_20) + SUM(_6_1_20)) as _20200526_20200601,
  (SUM(_6_2_20) + SUM(_6_3_20) + SUM(_6_4_20) + SUM(_6_5_20) + SUM(_6_6_20) + SUM(_6_7_20) + SUM(_6_8_20)) as _20200602_20200608,
  (SUM(_6_9_20) + SUM(_6_10_20) + SUM(_6_11_20) + SUM(_6_12_20) + SUM(_6_13_20) + SUM(_6_14_20) + SUM(_6_15_20)) as _20200609_20200615,
  (SUM(_6_16_20) + SUM(_6_17_20) + SUM(_6_18_20) + SUM(_6_19_20) + SUM(_6_20_20) + SUM(_6_21_20) + SUM(_6_22_20)) as _20200616_20200622,
  (SUM(_6_23_20) + SUM(_6_24_20) + SUM(_6_25_20) + SUM(_6_26_20) + SUM(_6_27_20) + SUM(_6_28_20) + SUM(_6_29_20)) as _20200623_20200629,
  (SUM(_6_30_20) + SUM(_7_1_20) + SUM(_7_2_20) + SUM(_7_3_20) + SUM(_7_4_20) + SUM(_7_5_20) + SUM(_7_6_20)) as _20200630_20200706,
  (SUM(_7_7_20) + SUM(_7_8_20) + SUM(_7_9_20) + SUM(_7_10_20) + SUM(_7_11_20) + SUM(_7_12_20) + SUM(_7_13_20)) as _20200707_20200713,
  (SUM(_7_14_20) + SUM(_7_15_20) + SUM(_7_16_20) + SUM(_7_17_20) + SUM(_7_18_20) + SUM(_7_19_20) + SUM(_7_20_20)) as _20200714_20200720,
  (SUM(_7_21_20) + SUM(_7_22_20) + SUM(_7_23_20) + SUM(_7_24_20) + SUM(_7_25_20) + SUM(_7_26_20) + SUM(_7_27_20)) as _20200721_20200727,
  (SUM(_7_28_20) + SUM(_7_29_20) + SUM(_7_30_20) + SUM(_7_31_20) + SUM(_8_1_20) + SUM(_8_2_20) + SUM(_8_3_20)) as _20200728_20200803,
  (SUM(_8_4_20) + SUM(_8_5_20) + SUM(_8_6_20) + SUM(_8_7_20) + SUM(_8_8_20) + SUM(_8_9_20) + SUM(_8_10_20)) as _20200804_20200810,
  (SUM(_8_11_20) + SUM(_8_12_20) + SUM(_8_13_20) + SUM(_8_14_20) + SUM(_8_15_20) + SUM(_8_16_20) + SUM(_8_17_20)) as _20200811_20200817,
  (SUM(_8_18_20) + SUM(_8_19_20) + SUM(_8_20_20) + SUM(_8_21_20) + SUM(_8_22_20) + SUM(_8_23_20) + SUM(_8_24_20)) as _20200818_20200824,
  (SUM(_8_25_20) + SUM(_8_26_20) + SUM(_8_27_20) + SUM(_8_28_20) + SUM(_8_29_20) + SUM(_8_30_20) + SUM(_8_31_20)) as _20200825_20200831,
  (SUM(_9_1_20) + SUM(_9_2_20) + SUM(_9_3_20) + SUM(_9_4_20) + SUM(_9_5_20) + SUM(_9_6_20) + SUM(_9_7_20)) as _20200901_20200907,
  (SUM(_9_8_20) + SUM(_9_9_20) + SUM(_9_10_20) + SUM(_9_11_20) + SUM(_9_12_20) + SUM(_9_13_20) + SUM(_9_14_20)) as _20200908_20200914,
  (SUM(_9_15_20) + SUM(_9_16_20) + SUM(_9_17_20) + SUM(_9_18_20) + SUM(_9_19_20) + SUM(_9_20_20) + SUM(_9_21_20)) as _20200915_20200921,
  (SUM(_9_22_20) + SUM(_9_23_20) + SUM(_9_24_20) + SUM(_9_25_20) + SUM(_9_26_20) + SUM(_9_27_20) + SUM(_9_28_20)) as _20200922_20200928,
  (SUM(_9_29_20) + SUM(_9_30_20) + SUM(_10_1_20) + SUM(_10_2_20) + SUM(_10_3_20) + SUM(_10_4_20) + SUM(_10_5_20)) as _20200929_20201005,
  (SUM(_10_6_20) + SUM(_10_7_20) + SUM(_10_8_20) + SUM(_10_9_20) + SUM(_10_10_20) + SUM(_10_11_20) + SUM(_10_12_20)) as _20201006_20201012,
  (SUM(_10_13_20) + SUM(_10_14_20) + SUM(_10_15_20) + SUM(_10_16_20) + SUM(_10_17_20) + SUM(_10_18_20) + SUM(_10_19_20)) as _20201013_20201019,
  (SUM(_10_20_20) + SUM(_10_21_20) + SUM(_10_22_20) + SUM(_10_23_20) + SUM(_10_24_20) + SUM(_10_25_20) + SUM(_10_26_20)) as _20201020_20201026,
  (SUM(_10_27_20) + SUM(_10_28_20) + SUM(_10_29_20) + SUM(_10_30_20) + SUM(_10_31_20) + SUM(_11_1_20) + SUM(_11_2_20)) as _20201027_20201102,
  (SUM(_11_3_20) + SUM(_11_4_20) + SUM(_11_5_20) + SUM(_11_6_20) + SUM(_11_7_20) + SUM(_11_8_20) + SUM(_11_9_20)) as _20201103_20201109,
  (SUM(_11_10_20) + SUM(_11_11_20) + SUM(_11_12_20) + SUM(_11_13_20) + SUM(_11_14_20) + SUM(_11_15_20) + SUM(_11_16_20)) as _20201110_20201116,
  (SUM(_11_17_20) + SUM(_11_18_20) + SUM(_11_19_20) + SUM(_11_20_20) + SUM(_11_21_20) + SUM(_11_22_20) + SUM(_11_23_20)) as _20201117_20201123,
  (SUM(_11_24_20) + SUM(_11_25_20) + SUM(_11_26_20) + SUM(_11_27_20) + SUM(_11_28_20) + SUM(_11_29_20) + SUM(_11_30_20)) as _20201124_20201130,
  (SUM(_12_1_20) + SUM(_12_2_20) + SUM(_12_3_20) + SUM(_12_4_20) + SUM(_12_5_20) + SUM(_12_6_20) + SUM(_12_7_20)) as _20201201_20201207,
  (SUM(_12_8_20) + SUM(_12_9_20) + SUM(_12_10_20) + SUM(_12_11_20) + SUM(_12_12_20) + SUM(_12_13_20) + SUM(_12_14_20)) as _20201208_20201214,
  (SUM(_12_15_20) + SUM(_12_16_20) + SUM(_12_17_20) + SUM(_12_18_20) + SUM(_12_19_20) + SUM(_12_20_20) + SUM(_12_21_20)) as _20201215_20201221,
  (SUM(_12_22_20) + SUM(_12_23_20) + SUM(_12_24_20) + SUM(_12_25_20) + SUM(_12_26_20) + SUM(_12_27_20) + SUM(_12_28_20)) as _20201222_20201228,
  (SUM(_12_29_20) + SUM(_12_30_20) + SUM(_12_31_20) + SUM(_1_1_21) + SUM(_1_2_21) + SUM(_1_3_21) + SUM(_1_4_21)) as _20201229_20210104,
  (SUM(_1_5_21) + SUM(_1_6_21) + SUM(_1_7_21) + SUM(_1_8_21) + SUM(_1_9_21) + SUM(_1_10_21) + SUM(_1_11_21)) as _20210105_20210111,
  (SUM(_1_12_21) + SUM(_1_13_21) + SUM(_1_14_21) + SUM(_1_15_21) + SUM(_1_16_21) + SUM(_1_17_21) + SUM(_1_18_21)) as _20210112_20210118,
  (SUM(_1_19_21) + SUM(_1_20_21) + SUM(_1_21_21) + SUM(_1_22_21) + SUM(_1_23_21) + SUM(_1_24_21) + SUM(_1_25_21)) as _20210119_20210125,
  (SUM(_1_26_21) + SUM(_1_27_21) + SUM(_1_28_21) + SUM(_1_29_21) + SUM(_1_30_21) + SUM(_1_31_21) + SUM(_2_1_21)) as _20210126_20210201,
  (SUM(_2_2_21) + SUM(_2_3_21) + SUM(_2_4_21) + SUM(_2_5_21) + SUM(_2_6_21) + SUM(_2_7_21) + SUM(_2_8_21)) as _20210202_20210208,
  (SUM(_2_9_21) + SUM(_2_10_21) + SUM(_2_11_21) + SUM(_2_12_21) + SUM(_2_13_21) + SUM(_2_14_21) + SUM(_2_15_21)) as _20210209_20210215,
  (SUM(_2_16_21) + SUM(_2_17_21) + SUM(_2_18_21) + SUM(_2_19_21) + SUM(_2_20_21) + SUM(_2_21_21) + SUM(_2_22_21)) as _20210216_20210222,
  (SUM(_2_23_21) + SUM(_2_24_21) + SUM(_2_25_21) + SUM(_2_26_21) + SUM(_2_27_21) + SUM(_2_28_21) + SUM(_3_1_21)) as _20210223_20210301,
  (SUM(_3_2_21) + SUM(_3_3_21) + SUM(_3_4_21) + SUM(_3_5_21) + SUM(_3_6_21) + SUM(_3_7_21) + SUM(_3_8_21)) as _20210302_20210308,
  (SUM(_3_9_21) + SUM(_3_10_21) + SUM(_3_11_21) + SUM(_3_12_21) + SUM(_3_13_21) + SUM(_3_14_21) + SUM(_3_15_21)) as _20210309_20210315,
  (SUM(_3_16_21) + SUM(_3_17_21) + SUM(_3_18_21) + SUM(_3_19_21) + SUM(_3_20_21) + SUM(_3_21_21) + SUM(_3_22_21)) as _20210316_20210322,
  (SUM(_3_23_21) + SUM(_3_24_21) + SUM(_3_25_21) + SUM(_3_26_21) + SUM(_3_27_21) + SUM(_3_28_21) + SUM(_3_29_21)) as _20210323_20210329,
  (SUM(_3_30_21) + SUM(_3_31_21) + SUM(_4_1_21) + SUM(_4_2_21) + SUM(_4_3_21) + SUM(_4_4_21) + SUM(_4_5_21)) as _20210330_20210405,
  (SUM(_4_6_21) + SUM(_4_7_21) + SUM(_4_8_21) + SUM(_4_9_21) + SUM(_4_10_21) + SUM(_4_11_21) + SUM(_4_12_21)) as _20210406_20210412,
  (SUM(_4_13_21) + SUM(_4_14_21) + SUM(_4_15_21) + SUM(_4_16_21) + SUM(_4_17_21) + SUM(_4_18_21) + SUM(_4_19_21)) as _20210413_20210419,
  (SUM(_4_20_21) + SUM(_4_21_21) + SUM(_4_22_21) + SUM(_4_23_21) + SUM(_4_24_21) + SUM(_4_25_21) + SUM(_4_26_21)) as _20210420_20210426,
  (SUM(_4_27_21) + SUM(_4_28_21) + SUM(_4_29_21) + SUM(_4_30_21) + SUM(_5_1_21) + SUM(_5_2_21) + SUM(_5_3_21)) as _20210427_20210503,
  (SUM(_5_4_21) + SUM(_5_5_21) + SUM(_5_6_21) + SUM(_5_7_21) + SUM(_5_8_21) + SUM(_5_9_21) + SUM(_5_10_21)) as _20210504_20210510,
  (SUM(_5_11_21) + SUM(_5_12_21) + SUM(_5_13_21) + SUM(_5_14_21) + SUM(_5_15_21) + SUM(_5_16_21) + SUM(_5_17_21)) as _20210511_20210517,
  (SUM(_5_18_21) + SUM(_5_19_21) + SUM(_5_20_21) + SUM(_5_21_21) + SUM(_5_22_21) + SUM(_5_23_21) + SUM(_5_24_21)) as _20210518_20210524,
  (SUM(_5_25_21) + SUM(_5_26_21) + SUM(_5_27_21) + SUM(_5_28_21) + SUM(_5_29_21) + SUM(_5_30_21) + SUM(_5_31_21)) as _20210525_20210531,
  (SUM(_6_1_21) + SUM(_6_2_21) + SUM(_6_3_21) + SUM(_6_4_21) + SUM(_6_5_21) + SUM(_6_6_21) + SUM(_6_7_21)) as _20210601_20210607,
  (SUM(_6_8_21) + SUM(_6_9_21) + SUM(_6_10_21) + SUM(_6_11_21) + SUM(_6_12_21) + SUM(_6_13_21) + SUM(_6_14_21)) as _20210608_20210614,
  (SUM(_6_15_21) + SUM(_6_16_21) + SUM(_6_17_21) + SUM(_6_18_21) + SUM(_6_19_21) + SUM(_6_20_21) + SUM(_6_21_21)) as _20210615_20210621,
  (SUM(_6_22_21) + SUM(_6_23_21) + SUM(_6_24_21) + SUM(_6_25_21) + SUM(_6_26_21) + SUM(_6_27_21) + SUM(_6_28_21)) as _20210622_20210628,
  (SUM(_6_29_21) + SUM(_6_30_21) + SUM(_7_1_21) + SUM(_7_2_21) + SUM(_7_3_21) + SUM(_7_4_21) + SUM(_7_5_21)) as _20210629_20210705,
  (SUM(_7_6_21) + SUM(_7_7_21) + SUM(_7_8_21) + SUM(_7_9_21) + SUM(_7_10_21) + SUM(_7_11_21) + SUM(_7_12_21)) as _20210706_20210712,
  (SUM(_7_13_21) + SUM(_7_14_21) + SUM(_7_15_21) + SUM(_7_16_21) + SUM(_7_17_21) + SUM(_7_18_21) + SUM(_7_19_21)) as _20210713_20210719,
  (SUM(_7_20_21) + SUM(_7_21_21) + SUM(_7_22_21) + SUM(_7_23_21) + SUM(_7_24_21) + SUM(_7_25_21) + SUM(_7_26_21)) as _20210720_20210726,
  (SUM(_7_27_21) + SUM(_7_28_21) + SUM(_7_29_21) + SUM(_7_30_21) + SUM(_7_31_21) + SUM(_8_1_21) + SUM(_8_2_21)) as _20210727_20210802,
  (SUM(_8_3_21) + SUM(_8_4_21) + SUM(_8_5_21) + SUM(_8_6_21) + SUM(_8_7_21) + SUM(_8_8_21) + SUM(_8_9_21)) as _20210803_20210809,
  (SUM(_8_10_21) + SUM(_8_11_21) + SUM(_8_12_21) + SUM(_8_13_21) + SUM(_8_14_21) + SUM(_8_15_21) + SUM(_8_16_21)) as _20210810_20210816,
  (SUM(_8_17_21) + SUM(_8_18_21) + SUM(_8_19_21) + SUM(_8_20_21) + SUM(_8_21_21) + SUM(_8_22_21) + SUM(_8_23_21)) as _20210817_20210823,
  (SUM(_8_24_21) + SUM(_8_25_21) + SUM(_8_26_21) + SUM(_8_27_21) + SUM(_8_28_21) + SUM(_8_29_21) + SUM(_8_30_21)) as _20210824_20210830,
  (SUM(_8_31_21) + SUM(_9_1_21) + SUM(_9_2_21) + SUM(_9_3_21) + SUM(_9_4_21) + SUM(_9_5_21) + SUM(_9_6_21)) as _20210831_20210906,
  (SUM(_9_7_21) + SUM(_9_8_21) + SUM(_9_9_21) + SUM(_9_10_21) + SUM(_9_11_21) + SUM(_9_12_21) + SUM(_9_13_21)) as _20210907_20210913,
  (SUM(_9_14_21) + SUM(_9_15_21) + SUM(_9_16_21) + SUM(_9_17_21) + SUM(_9_18_21) + SUM(_9_19_21) + SUM(_9_20_21)) as _20210914_20210920,
  (SUM(_9_21_21) + SUM(_9_22_21) + SUM(_9_23_21) + SUM(_9_24_21) + SUM(_9_25_21) + SUM(_9_26_21) + SUM(_9_27_21)) as _20210921_20210927,
  (SUM(_9_28_21) + SUM(_9_29_21) + SUM(_9_30_21) + SUM(_10_1_21) + SUM(_10_2_21) + SUM(_10_3_21) + SUM(_10_4_21)) as _20210928_20211004,
  (SUM(_10_5_21) + SUM(_10_6_21) + SUM(_10_7_21) + SUM(_10_8_21) + SUM(_10_9_21) + SUM(_10_10_21) + SUM(_10_11_21)) as _20211005_20211011,
  (SUM(_10_12_21) + SUM(_10_13_21) + SUM(_10_14_21) + SUM(_10_15_21) + SUM(_10_16_21) + SUM(_10_17_21) + SUM(_10_18_21)) as _20211012_20211018,
  (SUM(_10_19_21) + SUM(_10_20_21) + SUM(_10_21_21) + SUM(_10_22_21) + SUM(_10_23_21) + SUM(_10_24_21) + SUM(_10_25_21)) as _20211019_20211025,
  (SUM(_10_26_21) + SUM(_10_27_21) + SUM(_10_28_21) + SUM(_10_29_21) + SUM(_10_30_21) + SUM(_10_31_21) + SUM(_11_1_21)) as _20211026_20211101,
  (SUM(_11_2_21) + SUM(_11_3_21) + SUM(_11_4_21) + SUM(_11_5_21) + SUM(_11_6_21) + SUM(_11_7_21) + SUM(_11_8_21)) as _20211102_20211108,
  (SUM(_11_9_21) + SUM(_11_10_21) + SUM(_11_11_21) + SUM(_11_12_21) + SUM(_11_13_21) + SUM(_11_14_21) + SUM(_11_15_21)) as _20211109_20211115,
  (SUM(_11_16_21) + SUM(_11_17_21) + SUM(_11_18_21) + SUM(_11_19_21) + SUM(_11_20_21) + SUM(_11_21_21) + SUM(_11_22_21)) as _20211116_20211122,
  (SUM(_11_23_21) + SUM(_11_24_21) + SUM(_11_25_21) + SUM(_11_26_21) + SUM(_11_27_21) + SUM(_11_28_21) + SUM(_11_29_21)) as _20211123_20211129
FROM
  `bigquery-public-data.covid19_jhu_csse.deaths`


/* 
    Dataset: crypto_ethereum
    Table: blocks  
    Result: Transactions per block w/ timestamp
*/
SELECT
  1 as blocks,
  transaction_count as transactions,
  timestamp
FROM
  `bigquery-public-data.crypto_ethereum.blocks`
WHERE
  timestamp > '2020-01-27'
AND 
  timestamp < '2021-11-29'

/* 
    Dataset: crypto_bitcoin
    Table: blocks  
    Result: Transactions per block w/ timestamp
*/
SELECT
  1 as blocks,
  transaction_count as transactions,
  timestamp
FROM
  `bigquery-public-data.crypto_bitcoin.blocks`
WHERE
  timestamp > '2020-01-27'
AND 
  timestamp < '2021-11-29'