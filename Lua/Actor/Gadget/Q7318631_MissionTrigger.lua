require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318631_MissionTrigger = class("Q7318631_MissionTrigger", GadgetActorProxy)
Q7318631_MissionTrigger.defaultAlias = "Q7318631_MissionTrigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318631_MissionTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318631_MissionTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7318631_MissionTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7318631)
    this:DestroySelf()
end

function Q7318631_MissionTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7318631_MissionTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7318631_MissionTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318631_MissionTrigger
