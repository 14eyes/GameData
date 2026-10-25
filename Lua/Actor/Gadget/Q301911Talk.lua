require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q301911Talk = class("Q301911Talk", GadgetActorProxy)
Q301911Talk.defaultAlias = "Q301911Talk"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q301911Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q301911Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q301911Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3019"):RequestInteraction(npcs.Npc1059Data.alias)
    self:DestroySelf()
end

function Q301911Talk:TriggerOut()
    print("TriggerOut")
end

return Q301911Talk
