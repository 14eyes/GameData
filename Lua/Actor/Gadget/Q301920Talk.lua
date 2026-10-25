require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q301920Talk = class("Q301920Talk", GadgetActorProxy)
Q301920Talk.defaultAlias = "Q301920Talk"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q301920Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q301920Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q301920Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3019"):RequestInteraction(npcs.Npc1059Data.alias)
    self:DestroySelf()
end

function Q301920Talk:TriggerOut()
    print("TriggerOut")
end

return Q301920Talk
