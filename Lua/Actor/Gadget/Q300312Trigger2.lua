require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300312Trigger2 = class("Q300312Trigger2", GadgetActorProxy)
Q300312Trigger2.defaultAlias = "Q300312Trigger2"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300312Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300312Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300312Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300312)
    self:DestroySelf()
end

function Q300312Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q300312Trigger2
