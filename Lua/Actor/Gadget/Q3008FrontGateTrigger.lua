require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3008FrontGateTrigger = class("Q3008FrontGateTrigger", GadgetActorProxy)
Q3008FrontGateTrigger.defaultAlias = "Q3008FrontGateTrigger"
local Q3008ClientConfig = require("Quest/Client/Q3008ClientConfig")

local subIDs = Q3008ClientConfig.SubIDs
local npcs = Q3008ClientConfig.Npcs
local datas = Q3008ClientConfig.Datas

function Q3008FrontGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3008FrontGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(14, 25, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3008FrontGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3008"):RequestInteraction(npcs.Npc12666Data.alias)
end

function Q3008FrontGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3008FrontGateTrigger
