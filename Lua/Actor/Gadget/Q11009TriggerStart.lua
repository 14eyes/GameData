require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11009TriggerStart = class("Q11009TriggerStart", GadgetActorProxy)
Q11009TriggerStart.defaultAlias = "Q11009TriggerStart"
local Q11009ClientConfig = require("Quest/Client/Q11009ClientConfig")

local subIDs = Q11009ClientConfig.SubIDs
local npcs = Q11009ClientConfig.Npcs
local datas = Q11009ClientConfig.Datas

function Q11009TriggerStart:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11009TriggerStart:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11009TriggerStart:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11009"):RequestInteraction(npcs.Npc10211Data.alias)
    self:DestroySelf()
    actorMgr:DestroyNpcActorByAlias("Npc102321025")
end

function Q11009TriggerStart:TriggerOut()
    print("TriggerOut")
end

return Q11009TriggerStart
