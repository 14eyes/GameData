require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3021Trigger2 = class("Q3021Trigger2", GadgetActorProxy)
Q3021Trigger2.defaultAlias = "Q3021Trigger2"
local Q3021ClientConfig = require("Quest/Client/Q3021ClientConfig")

local subIDs = Q3021ClientConfig.SubIDs
local npcs = Q3021ClientConfig.Npcs
local datas = Q3021ClientConfig.Datas

function Q3021Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3021Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3021Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302105)
    self:DestroySelf()
end

function Q3021Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q3021Trigger2
