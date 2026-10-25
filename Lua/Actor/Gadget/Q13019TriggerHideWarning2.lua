require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13019TriggerHideWarning2 = class("Q13019TriggerHideWarning2", GadgetActorProxy)
Q13019TriggerHideWarning2.defaultAlias = "Q13019TriggerHideWarning2"
local Q13019ClientConfig = require("Quest/Client/Q13019ClientConfig")

local this
local subIDs = Q13019ClientConfig.SubIDs
local npcs = Q13019ClientConfig.Npcs
local points = Q13019ClientConfig.Points
local datas = Q13019ClientConfig.Datas

function Q13019TriggerHideWarning2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13019TriggerHideWarning2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13019TriggerHideWarning2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(Q13019ClientConfig.ActorAlias):TransmitPlayerByQuestId(1301915, 1)
    actorMgr:GetActor("13019"):NarratorOnlyTaskByData(datas.NarratorWithIdHideWarning)
end

function Q13019TriggerHideWarning2:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13019TriggerHideWarning2:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13019TriggerHideWarning2:TriggerOut()
    print("TriggerOut")
end

return Q13019TriggerHideWarning2
