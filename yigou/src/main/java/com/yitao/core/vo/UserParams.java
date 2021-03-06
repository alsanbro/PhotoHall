/**
 * 
 */
package com.yitao.core.vo;

import javax.ws.rs.FormParam;

import com.yitao.core.model.User;
import com.yitao.core.model.UserGroup;

/**
 * @author iDay
 *
 */
public class UserParams extends ModelParams<User> {
	
	@FormParam("group")
	private Long groupId;

	/* (non-Javadoc)
	 * @see com.yunpeng.core.vo.ModelParams#getModel()
	 */
	@Override
	public User getModel() {
		this.model.setGroup(new UserGroup(groupId));
		return this.model;
	}

}
