require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q301914Talk = class("Q301914Talk", GadgetActorProxy)
Q301914Talk.defaultAlias = "Q301914Talk"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q301914Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q301914Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q301914Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3019"):RequestInteraction(npcs.Npc12706Data.alias)
    self:DestroySelf()
end

function Q301914Talk:TriggerOut()
    print("TriggerOut")
end

return Q301914Talk
