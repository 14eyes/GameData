require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13019TriggerHideWarning1 = class("Q13019TriggerHideWarning1", GadgetActorProxy)
Q13019TriggerHideWarning1.defaultAlias = "Q13019TriggerHideWarning1"
local Q13019ClientConfig = require("Quest/Client/Q13019ClientConfig")

local this
local subIDs = Q13019ClientConfig.SubIDs
local npcs = Q13019ClientConfig.Npcs
local points = Q13019ClientConfig.Points
local datas = Q13019ClientConfig.Datas

function Q13019TriggerHideWarning1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13019TriggerHideWarning1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13019TriggerHideWarning1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(Q13019ClientConfig.ActorAlias):TransmitPlayerByQuestId(1301915, 1)
    actorMgr:GetActor("13019"):NarratorOnlyTaskByData(datas.NarratorWithIdHideWarning)
end

function Q13019TriggerHideWarning1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13019TriggerHideWarning1:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13019TriggerHideWarning1:TriggerOut()
    print("TriggerOut")
end

return Q13019TriggerHideWarning1
