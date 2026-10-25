require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3011EastGateTrigger = class("Q3011EastGateTrigger", GadgetActorProxy)
Q3011EastGateTrigger.defaultAlias = "Q3011EastGateTrigger"
local Q3011ClientConfig = require("Quest/Client/Q3011ClientConfig")

local subIDs = Q3011ClientConfig.SubIDs
local npcs = Q3011ClientConfig.Npcs
local datas = Q3011ClientConfig.Datas

function Q3011EastGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3011EastGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 27, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3011EastGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3011"):RequestInteraction(npcs.Npc12657Data.alias)
end

function Q3011EastGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3011EastGateTrigger
