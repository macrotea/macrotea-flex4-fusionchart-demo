package cn.ac.iscas.gz.sems.chart.service
{
	import cn.ac.iscas.gz.sems.chart.ChartTemplateDataProvider;
	import cn.ac.iscas.gz.sems.chart.comp.AngularGaugeBox;
	import cn.ac.iscas.gz.sems.chart.comp.ThermometerBox;
	import cn.ac.iscas.gz.sems.chart.vo.AngularGaugeChartConfigVo;
	import cn.ac.iscas.gz.sems.chart.vo.ThermometerChartConfigVo;
	
	import com.fusionwidgets.components.FusionWidgets;
	
	import spark.components.Group;

	/**
	 * 图表服务类
	 * @author: liangqiye@gz.iscas.ac.cn
	 * @version: 1.0
	 * @date: 2013-6-6 下午15:04:15
	 * @note:
	 */
	public class ChartService
	{
		/**
		 * 温度计图表类型 
		 */		
		public static const THERMOMETER_TYPE:String = "Thermometer";
		
		/**
		 * 仪表盘图表类型 
		 */		
		public static const ANGULAR_GAUGE_TYPE:String = "AngularGauge";
		
		/* ------------------------ 温度计 --------------------- */
		
		/**
		 * 创建温度计图表 
		 * @return 
		 */		
		public function createThermometerChart(thermometerChartConfigVo:ThermometerChartConfigVo):FusionWidgets
		{
			//创建数据
			var chartXMLData:String = ChartTemplateDataProvider.getThermometerChartTemplateData(thermometerChartConfigVo);
			
			//创建Widget
			var widget:FusionWidgets=new FusionWidgets();
			widget.FCChartType=THERMOMETER_TYPE;
			widget.FCDataXML=chartXMLData;
			
			return widget;
		}
		
		/**
		 * 根据ThermometerChartConfigVo对象参数更新特定温度计图表 
		 * @return 
		 */		
		public function updateThermometerChart(widget:FusionWidgets,thermometerChartConfigVo:ThermometerChartConfigVo):void
		{
			//创建新数据
			var newChartXMLData:String = ChartTemplateDataProvider.getThermometerChartTemplateData(thermometerChartConfigVo);
			widget.FCDataXML=newChartXMLData;
			
			//重新渲染
			widget.FCRender();
		}
		
		/**
		 * 创建温度计图表容器盒子
		 * @return 
		 */		
		public function createThermometerBox(thermometerChartConfigVo:ThermometerChartConfigVo):ThermometerBox
		{
			var chartXMLData:String = ChartTemplateDataProvider.getThermometerChartTemplateData(thermometerChartConfigVo);
			
			//构造组件
			var thermometerBox:ThermometerBox=new ThermometerBox();
			
			//组件宽高有默认值,若参数对象中有合适值则覆盖
			if(thermometerChartConfigVo.width>0){
				thermometerBox.width = thermometerChartConfigVo.width;
			}
			if(thermometerChartConfigVo.height>0){
				thermometerBox.height = thermometerChartConfigVo.height;
			}
			//图表描述
			thermometerBox.desc = thermometerChartConfigVo.chartDesc;
			//图表数据
			thermometerBox.xmlDataText = chartXMLData;
			
			thermometerBox.dataVo = thermometerChartConfigVo;
			
			return thermometerBox;
		}
		
		/**
		 * 在容器中添加显示温度计图表
		 * @return 
		 */		
		public function showThermometerBoxIn(container:Group,thermometerChartConfigVo:ThermometerChartConfigVo):void
		{
			var thermometerBox:ThermometerBox = createThermometerBox(thermometerChartConfigVo);
			
			//	VGroup -> Group -> GroupBase -> UIComponent -> FlexSprite -> Sprite -> DisplayObjectContainer -> InteractiveObject -> DisplayObject -> EventDispatcher -> Object
			container.addElement(thermometerBox);
		}
		
		/* ------------------------ 仪表盘 --------------------- */
		
		/**
		 * 创建仪表盘图表 
		 * @return 
		 */		
		public function createAngularGaugeChart(angularGaugeChartConfigVo:AngularGaugeChartConfigVo):FusionWidgets
		{
			//创建数据
			var chartXMLData:String = ChartTemplateDataProvider.getAngularGaugeChartTemplateData(angularGaugeChartConfigVo);
			
			//创建Widget
			var widget:FusionWidgets=new FusionWidgets();
			widget.FCChartType=THERMOMETER_TYPE;
			widget.FCDataXML=chartXMLData;
			
			return widget;
		}
		
		/**
		 * 根据AngularGaugeChartConfigVo对象参数更新特定仪表盘图表 
		 * @return 
		 */		
		public function updateAngularGaugeChart(angularGaugeChart:FusionWidgets,angularGaugeChartConfigVo:AngularGaugeChartConfigVo):void
		{
			//创建新数据
			var newChartXMLData:String = ChartTemplateDataProvider.getAngularGaugeChartTemplateData(angularGaugeChartConfigVo);
			angularGaugeChart.FCDataXML=newChartXMLData;
			
			//重新渲染
			angularGaugeChart.FCRender();
		}
		
		/**
		 * 创建仪表盘图表容器盒子
		 * @return 
		 */		
		public function createAngularGaugeBox(angularGaugeChartConfigVo:AngularGaugeChartConfigVo):AngularGaugeBox
		{
			var chartXMLData:String = ChartTemplateDataProvider.getAngularGaugeChartTemplateData(angularGaugeChartConfigVo);
			
			//构造组件
			var angularGaugeBox:AngularGaugeBox=new AngularGaugeBox();
			
			//组件宽高有默认值,若参数对象中有合适值则覆盖
			if(angularGaugeChartConfigVo.width>0){
				angularGaugeBox.width = angularGaugeChartConfigVo.width;
			}
			if(angularGaugeChartConfigVo.height>0){
				angularGaugeBox.height = angularGaugeChartConfigVo.height;
			}
			//图表描述
			angularGaugeBox.desc = angularGaugeChartConfigVo.chartDesc;
			//图表数据
			angularGaugeBox.xmlDataText = chartXMLData;
			
			return angularGaugeBox;
		}
		
		/**
		 * 在容器中添加显示仪表盘图表
		 * @return 
		 */		
		public function showAngularGaugeBoxIn(container:Group,angularGaugeChartConfigVo:AngularGaugeChartConfigVo):void
		{
			var angularGaugeBox:AngularGaugeBox = createAngularGaugeBox(angularGaugeChartConfigVo);
			
			//	VGroup -> Group -> GroupBase -> UIComponent -> FlexSprite -> Sprite -> DisplayObjectContainer -> InteractiveObject -> DisplayObject -> EventDispatcher -> Object
			container.addElement(angularGaugeBox);
		}
			
	}
}