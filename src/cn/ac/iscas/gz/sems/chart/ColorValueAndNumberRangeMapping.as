package cn.ac.iscas.gz.sems.chart
{
	import mx.charts.chartClasses.NumericAxis;

	/**
	 * 颜色值和数值范围映射类
	 * @author: liangqiye@gz.iscas.ac.cn
	 * @version: 1.0
	 * @date: 2013-6-6 下午15:04:15
	 * @note:
	 */	
	public final class ColorValueAndNumberRangeMapping
	{
		/*
		 * 颜色层级,现共6级 
		 */		
		
		private static const LEVEL1:String = "CCFFFF";
		
		private static const LEVEL2:String = "CCFFCC";
		
		private static const LEVEL3:String = "CCFF99";
		
		private static const LEVEL4:String = "CCFF66";
		
		private static const LEVEL5:String = "CCFF33";
		
		private static const LEVEL6:String = "CCFF00";
		
		/**
		* 颜色层级值数组
		*/	
		private static const LevelArray:Array = [
			LEVEL1,LEVEL2,LEVEL3,LEVEL4,LEVEL5,LEVEL6
		];
		
		/**
		 * 根据最大值,最小值,当前值在颜色层级值数组中获得合适的颜色的代码
		 * // NOTICE liangqiye@gz.iscas.ac.cn / 2013-6-6 16:22:41 需要处理当最小值是负数的情况
		 * 
		 * 如: 
		 * max: 100 , min: 0 , value: 40
		 * max: 100 , min: -100 , value: 10
		 * max: 100 , min: -100 , value: -10
		 * 
		 * @param max
		 * @param min
		 * @param value
		 * @return 
		 * 
		 */		
		public static function getColorByNumber(max:int, min:int, value:int):String {
			
			var total:int = max - min;
			
			if (min < 0) {
				value = value + (-min);
			}
			
			var part:int = total / LevelArray.length;
			
			if (min < 0) {
				if (value > total)
					value = total;
			} else {
				if (value > max)
					value = max;
			}
			
			var index:int = value / part;
			
			return LevelArray[index == 0 ? index : index - 1];
		}
		
	}
}