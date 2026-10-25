require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007FrontGateTrigger = class("Q3007FrontGateTrigger", GadgetActorProxy)
Q3007FrontGateTrigger.defaultAlias = "Q3007FrontGateTrigger"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007FrontGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007FrontGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(14, 25, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007FrontGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3007"):RequestInteraction(npcs.Npc12666Data.alias)
end

function Q3007FrontGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3007FrontGateTrigger
