require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40021Trigger3 = class("Q40021Trigger3", GadgetActorProxy)
Q40021Trigger3.defaultAlias = "Q40021Trigger3"
local Q40021ClientConfig = require("Quest/Client/Q40021ClientConfig")

local mainID = Q40021ClientConfig.MainID
local actorAlias = Q40021ClientConfig.ActorAlias
local subIDs = Q40021ClientConfig.SubIDs
local npcs = Q40021ClientConfig.Npcs
local gadgets = Q40021ClientConfig.Gadgets
local datas = Q40021ClientConfig.Datas

function Q40021Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40021Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40021Trigger3:TriggerIn()
    local actor = actorMgr:GetActor(actorAlias)
    actor:UnSpawn(gadgets.Gadget70710489Data2.alias)
    actor:SpawnGadgetById(4002117, gadgets.Gadget70710489Data2.id, 1)
    actor:UnSpawn(gadgets.Gadget70710524Data2.alias)
    actor:SpawnGadgetById(4002117, gadgets.Gadget70710524Data2.id, 2)
    self:DestroySelf()
end

function Q40021Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q40021Trigger3
