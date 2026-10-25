require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300312Trigger3 = class("Q300312Trigger3", GadgetActorProxy)
Q300312Trigger3.defaultAlias = "Q300312Trigger3"
local Q3003ClientConfig = require("Quest/Client/Q3003ClientConfig")

local subIDs = Q3003ClientConfig.SubIDs
local npcs = Q3003ClientConfig.Npcs
local gadgets = Q3003ClientConfig.Gadgets
local points = Q3003ClientConfig.Points
local datas = Q3003ClientConfig.Datas

function Q300312Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300312Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300312Trigger3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300312)
    self:DestroySelf()
end

function Q300312Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q300312Trigger3
