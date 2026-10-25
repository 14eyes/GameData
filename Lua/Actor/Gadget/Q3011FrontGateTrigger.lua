require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3011FrontGateTrigger = class("Q3011FrontGateTrigger", GadgetActorProxy)
Q3011FrontGateTrigger.defaultAlias = "Q3011FrontGateTrigger"
local Q3011ClientConfig = require("Quest/Client/Q3011ClientConfig")

local subIDs = Q3011ClientConfig.SubIDs
local npcs = Q3011ClientConfig.Npcs
local datas = Q3011ClientConfig.Datas

function Q3011FrontGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3011FrontGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(14, 25, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3011FrontGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3011"):RequestInteraction(npcs.Npc12666Data.alias)
end

function Q3011FrontGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3011FrontGateTrigger
