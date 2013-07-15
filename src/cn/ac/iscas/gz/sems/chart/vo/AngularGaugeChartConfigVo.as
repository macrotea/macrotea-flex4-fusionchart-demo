package cn.ac.iscas.gz.sems.chart.vo
{
	/**
	 * 仪表盘图表配置值对象 
	 * @author: liangqiye@gz.iscas.ac.cn
	 * @version: 1.0
	 * @date: 2013-6-6 下午15:04:15
	 * @note:
	 */
	public class AngularGaugeChartConfigVo
	{
		/**
		 * 宽 
		 */		
		private var _width:int;
		
		/**
		 * 高 
		 */		
		private var _height:int;
		
		/**
		 * 最低值 
		 */		
		private var _lowerLimit:int;
		
		/**
		 * 最高值
		 */		
		private var _upperLimit:int;
		
		/**
		 * 当前值
		 */		
		private var _currentValue:int;
			
		/**
		 * 数字旁边的单位(中文好像有乱码,尴尬)
		 */		
		private var _numberSuffix:String="C";
			
		/**
		 * 图表描述
		 */
		private var _chartDesc:String="仪表盘";
		
		/**
		 * 原生节点数据 
		 */
		private var _nodeData:XML;
		
		/**
		 * 无参数构造 
		 * 
		 */		
		public function AngularGaugeChartConfigVo()
		{
		}

		public function get lowerLimit():int
		{
			return _lowerLimit;
		}

		public function set lowerLimit(value:int):void
		{
			_lowerLimit = value;
		}

		public function get upperLimit():int
		{
			return _upperLimit;
		}

		public function set upperLimit(value:int):void
		{
			_upperLimit = value;
		}

		public function get currentValue():int
		{
			return _currentValue;
		}

		public function set currentValue(value:int):void
		{
			_currentValue = value;
		}

		public function get numberSuffix():String
		{
			return _numberSuffix;
		}

		public function set numberSuffix(value:String):void
		{
			_numberSuffix = value;
		}

		public function get height():int
		{
			return _height;
		}

		public function set height(value:int):void
		{
			_height = value;
		}

		public function get width():int
		{
			return _width;
		}

		public function set width(value:int):void
		{
			_width = value;
		}

		public function get chartDesc():String
		{
			return _chartDesc;
		}

		public function set chartDesc(value:String):void
		{
			_chartDesc = value;
		}

		public function get nodeData():XML
		{
			return _nodeData;
		}

		public function set nodeData(value:XML):void
		{
			_nodeData = value;
		}


	}
}