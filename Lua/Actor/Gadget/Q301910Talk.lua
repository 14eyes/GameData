require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q301910Talk = class("Q301910Talk", GadgetActorProxy)
Q301910Talk.defaultAlias = "Q301910Talk"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q301910Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q301910Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q301910Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3019"):RequestInteraction(npcs.Npc1058Data.alias)
    self:DestroySelf()
end

function Q301910Talk:TriggerOut()
    print("TriggerOut")
end

return Q301910Talk
