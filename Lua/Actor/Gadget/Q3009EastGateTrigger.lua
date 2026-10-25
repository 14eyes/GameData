require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3009EastGateTrigger = class("Q3009EastGateTrigger", GadgetActorProxy)
Q3009EastGateTrigger.defaultAlias = "Q3009EastGateTrigger"
local Q3009ClientConfig = require("Quest/Client/Q3009ClientConfig")

local subIDs = Q3009ClientConfig.SubIDs
local npcs = Q3009ClientConfig.Npcs
local datas = Q3009ClientConfig.Datas

function Q3009EastGateTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3009EastGateTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 27, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3009EastGateTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3009"):RequestInteraction(npcs.Npc12657Data.alias)
end

function Q3009EastGateTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3009EastGateTrigger
