package cn.ac.iscas.gz.sems.chart
{
	import cn.ac.iscas.gz.sems.chart.vo.ThermometerChartConfigVo;
	import cn.ac.iscas.gz.sems.chart.vo.AngularGaugeChartConfigVo;
	import cn.ac.iscas.gz.sems.util.Printf;

	/**
	 * 图表模板数据提供者 
	 * @author: liangqiye@gz.iscas.ac.cn
	 * @version: 1.0
	 * @date: 2013-6-6 下午15:04:15
	 * @note:
	 */
	public final class ChartTemplateDataProvider
	{
		/**
		 * 温度计图表模板XML数据 
		 */		
		public static var THERMOMETER_CHART_TEMPLATE_XML:XML = <chart 
																	palette='4' 
																	bgColor='FFFFFF' 
																	thmFillColor='%s' 
																	bgAlpha='0'
																	lowerLimit='%s' 
																	upperLimit='%s' 
																	numberSuffix='%s' 
																	majorTMHeight='4'
																	minorTMNumber='5' 
																	chartTopMargin='25' 
																	chartLeftMargin='20'
																	thmbulbRadius='20'
																	showBorder='0' 
																	useSameFillColor='0' 
																	showTickValues='1'
																	decimalPrecision='1' 
																	ticksOnRight='1' 
																	>
																<value>%s</value>
															</chart>;
		/**
		 * 仪表盘图表模板XML数据 
		 */		
		public static var ANGULAR_GAUGE_CHART_TEMPLATE_XML:XML = <chart 
																	lowerLimit='%s' 
																	upperLimit='%s' 
																	gaugeStartAngle='180' 
																	gaugeEndAngle='0' 
																	palette='1' 
																	numberSuffix='%s' 
																	tickValueDistance='15'
																	showValue='1'
																	showGaugeBorder='1'
																	>
																   <colorRange>
																      <color minValue='%s' maxValue='75' code='FF654F'/>
																      <color minValue='75' maxValue='90' code='F6BD0F'/>
																      <color minValue='90' maxValue='%s' code='8BBA00'/>
																   </colorRange>
																   <dials>
																      <dial value='%s' rearExtension='10'/>
																   </dials>
																</chart>;
		
		/**
		 * 温度计图表模板XML文本数据 
		 */	
		public static var THERMOMETER_CHART_TEMPLATE_TEXT:String = THERMOMETER_CHART_TEMPLATE_XML.toXMLString();
		
		/**
		 * 仪表盘图表模板XML文本数据 
		 */	
		public static var ANGULAR_GAUGE_CHART_TEMPLATE_TEXT:String = ANGULAR_GAUGE_CHART_TEMPLATE_XML.toXMLString();
		
		/**
		 * 根据参数获得温度计图表模板数据 
		 * @param thermometerChartConfigVo			
		 * @return 
		 * 
		 */		
		public static function getThermometerChartTemplateData(thermometerChartConfigVo:ThermometerChartConfigVo):String{
			return Printf(THERMOMETER_CHART_TEMPLATE_TEXT,thermometerChartConfigVo.themeFillColor,thermometerChartConfigVo.lowerLimit,thermometerChartConfigVo.upperLimit,thermometerChartConfigVo.numberSuffix,thermometerChartConfigVo.currentValue);
		}
		
		/**
		 * 根据参数获得仪表盘图表模板数据 
		 * @param thermometerChartConfigVo			
		 * @return 
		 * 
		 */		
		public static function getAngularGaugeChartTemplateData(angularGaugeConfigVo:AngularGaugeChartConfigVo):String{
			return Printf(ANGULAR_GAUGE_CHART_TEMPLATE_TEXT,angularGaugeConfigVo.lowerLimit,angularGaugeConfigVo.upperLimit,angularGaugeConfigVo.numberSuffix,angularGaugeConfigVo.lowerLimit,angularGaugeConfigVo.upperLimit,angularGaugeConfigVo.currentValue);
		}
		
		
	}
}