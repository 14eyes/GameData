require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3009FrontGateTrigger = class("Q3009FrontGateTrigger", GadgetActorProxy)
Q3009FrontGateTrigger.defaultAlias = "Q3009FrontGateTrigger"
local Q3009ClientConfig = require("Quest/Client/Q3009ClientConfig")

local subIDs = Q3009ClientConfig.SubIDs
local npcs = Q3009ClientConfig.Npcs
local datas = Q3009ClientConfig.Datas

function Q3009FrontGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3009FrontGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(14, 25, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3009FrontGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3009"):RequestInteraction(npcs.Npc12666Data.alias)
end

function Q3009FrontGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3009FrontGateTrigger
