package web.food.model;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "Home")
public class HomeBean implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer homeId;
	private String homeName;
	private String homeFileName;
	@JsonIgnore
	private Blob homeImg;
	
	@Transient
	private MultipartFile productImage;  
	
	public HomeBean(Integer homeId, String homeName, String homeFileName, Blob homeImg) {
		super();
		this.homeId = homeId;
		this.homeName = homeName;
		this.homeFileName = homeFileName;
		this.homeImg = homeImg;
	}
	public HomeBean() {
		super();
	}
	public Integer getHomeId() {
		return homeId;
	}
	public void setHomeId(Integer homeId) {
		this.homeId = homeId;
	}
	public String getHomeName() {
		return homeName;
	}
	public void setHomeName(String homeName) {
		this.homeName = homeName;
	}
	public String getHomeFileName() {
		return homeFileName;
	}
	public void setHomeFileName(String homeFileName) {
		this.homeFileName = homeFileName;
	}
	public Blob getHomeImg() {
		return homeImg;
	}
	public void setHomeImg(Blob homeImg) {
		this.homeImg = homeImg;
	}

		
	
	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	
}
