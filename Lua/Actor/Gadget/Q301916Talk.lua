require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q301916Talk = class("Q301916Talk", GadgetActorProxy)
Q301916Talk.defaultAlias = "Q301916Talk"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q301916Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q301916Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q301916Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3019"):RequestInteraction(npcs.Npc1052Data.alias)
    self:DestroySelf()
end

function Q301916Talk:TriggerOut()
    print("TriggerOut")
end

return Q301916Talk
