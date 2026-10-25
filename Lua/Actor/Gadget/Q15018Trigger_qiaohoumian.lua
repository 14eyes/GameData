require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q15018Trigger_qiaohoumian = class("Q15018Trigger_qiaohoumian", GadgetActorProxy)
Q15018Trigger_qiaohoumian.defaultAlias = "Q15018Trigger_qiaohoumian"
local Q15018ClientConfig = require("Quest/Client/Q15018ClientConfig")

local this
local subIDs = Q15018ClientConfig.SubIDs
local datas = Q15018ClientConfig.Datas
local npcs = Q15018ClientConfig.Npcs
local points = Q15018ClientConfig.Points

function Q15018Trigger_qiaohoumian:OnPostDataPrepare()
    print("Q15018Trigger_qiaohoumian - OnPostDataPrepare")
    this = self
end

function Q15018Trigger_qiaohoumian:OnPostComponentPrepare()
    print("Q15018Trigger_qiaohoumian - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15018)
end

function Q15018Trigger_qiaohoumian:TriggerIn()
    print("Q15018Trigger_qiaohoumian - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("15018"):QuestNarratorTask(datas.NarratorWithId_6, nil)
end

function Q15018Trigger_qiaohoumian:PreTriggerIn()
    print("Q15018Trigger_qiaohoumian - PreTriggerIn")
end

function Q15018Trigger_qiaohoumian:LightUpTriggerIn()
    print("Q15018Trigger_qiaohoumian - LightUpTriggerIn")
end

function Q15018Trigger_qiaohoumian:TriggerOut()
    print("Q15018Trigger_qiaohoumian - TriggerOut")
end

return Q15018Trigger_qiaohoumian
