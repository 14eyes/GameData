require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302010Talk = class("Q302010Talk", GadgetActorProxy)
Q302010Talk.defaultAlias = "Q302010Talk"
local Q3020ClientConfig = require("Quest/Client/Q3020ClientConfig")

local subIDs = Q3020ClientConfig.SubIDs
local npcs = Q3020ClientConfig.Npcs
local datas = Q3020ClientConfig.Datas

function Q302010Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302010Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302010Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3020"):RequestInteraction(npcs.Npc1059Data.alias)
    self:DestroySelf()
end

function Q302010Talk:TriggerOut()
    print("TriggerOut")
end

return Q302010Talk
