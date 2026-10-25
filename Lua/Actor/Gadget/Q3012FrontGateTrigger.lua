require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3012FrontGateTrigger = class("Q3012FrontGateTrigger", GadgetActorProxy)
Q3012FrontGateTrigger.defaultAlias = "Q3012FrontGateTrigger"
local Q3012ClientConfig = require("Quest/Client/Q3012ClientConfig")

local subIDs = Q3012ClientConfig.SubIDs
local npcs = Q3012ClientConfig.Npcs
local datas = Q3012ClientConfig.Datas

function Q3012FrontGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3012FrontGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(14, 25, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3012FrontGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3012"):RequestInteraction(npcs.Npc12666Data.alias)
end

function Q3012FrontGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3012FrontGateTrigger
