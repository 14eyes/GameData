require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007EastGateTrigger = class("Q3007EastGateTrigger", GadgetActorProxy)
Q3007EastGateTrigger.defaultAlias = "Q3007EastGateTrigger"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007EastGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007EastGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 27, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007EastGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3007"):RequestInteraction(npcs.Npc12657Data.alias)
end

function Q3007EastGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3007EastGateTrigger
