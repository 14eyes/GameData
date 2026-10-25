require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3014FrontGateTrigger = class("Q3014FrontGateTrigger", GadgetActorProxy)
Q3014FrontGateTrigger.defaultAlias = "Q3014FrontGateTrigger"
local Q3014ClientConfig = require("Quest/Client/Q3014ClientConfig")

local subIDs = Q3014ClientConfig.SubIDs
local npcs = Q3014ClientConfig.Npcs
local datas = Q3014ClientConfig.Datas

function Q3014FrontGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3014FrontGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(14, 25, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3014FrontGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3014"):RequestInteraction(npcs.Npc12666Data.alias)
end

function Q3014FrontGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3014FrontGateTrigger
