require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3008EastGateTrigger = class("Q3008EastGateTrigger", GadgetActorProxy)
Q3008EastGateTrigger.defaultAlias = "Q3008EastGateTrigger"
local Q3008ClientConfig = require("Quest/Client/Q3008ClientConfig")

local subIDs = Q3008ClientConfig.SubIDs
local npcs = Q3008ClientConfig.Npcs
local datas = Q3008ClientConfig.Datas

function Q3008EastGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3008EastGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 27, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3008EastGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3008"):RequestInteraction(npcs.Npc12657Data.alias)
end

function Q3008EastGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3008EastGateTrigger
