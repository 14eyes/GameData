require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3010FrontGateTrigger = class("Q3010FrontGateTrigger", GadgetActorProxy)
Q3010FrontGateTrigger.defaultAlias = "Q3010FrontGateTrigger"
local Q3010ClientConfig = require("Quest/Client/Q3010ClientConfig")

local subIDs = Q3010ClientConfig.SubIDs
local npcs = Q3010ClientConfig.Npcs
local datas = Q3010ClientConfig.Datas

function Q3010FrontGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3010FrontGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(14, 25, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3010FrontGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3010"):RequestInteraction(npcs.Npc12666Data.alias)
end

function Q3010FrontGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3010FrontGateTrigger
