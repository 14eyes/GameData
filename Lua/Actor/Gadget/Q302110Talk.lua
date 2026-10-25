require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302110Talk = class("Q302110Talk", GadgetActorProxy)
Q302110Talk.defaultAlias = "Q302110Talk"
local Q3021ClientConfig = require("Quest/Client/Q3021ClientConfig")

local subIDs = Q3021ClientConfig.SubIDs
local npcs = Q3021ClientConfig.Npcs
local datas = Q3021ClientConfig.Datas

function Q302110Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302110Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302110Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3021"):RequestInteraction(npcs.Npc1059Data.alias)
    self:DestroySelf()
end

function Q302110Talk:TriggerOut()
    print("TriggerOut")
end

return Q302110Talk
