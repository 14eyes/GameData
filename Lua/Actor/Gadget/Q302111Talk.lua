require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302111Talk = class("Q302111Talk", GadgetActorProxy)
Q302111Talk.defaultAlias = "Q302111Talk"
local Q3021ClientConfig = require("Quest/Client/Q3021ClientConfig")

local subIDs = Q3021ClientConfig.SubIDs
local npcs = Q3021ClientConfig.Npcs
local datas = Q3021ClientConfig.Datas

function Q302111Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302111Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302111Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3021"):RequestInteraction(npcs.Npc12709Data.alias)
    self:DestroySelf()
end

function Q302111Talk:TriggerOut()
    print("TriggerOut")
end

return Q302111Talk
