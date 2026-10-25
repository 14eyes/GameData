require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13014TriggerDreamCEnd = class("Q13014TriggerDreamCEnd", GadgetActorProxy)
Q13014TriggerDreamCEnd.defaultAlias = "Q13014TriggerDreamCEnd"
local Q13014ClientConfig = require("Quest/Client/Q13014ClientConfig")

local subIDs = Q13014ClientConfig.SubIDs
local npcs = Q13014ClientConfig.Npcs
local datas = Q13014ClientConfig.Datas

function Q13014TriggerDreamCEnd:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13014TriggerDreamCEnd:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13014TriggerDreamCEnd:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13014"):RequestInteraction(npcs.Npc12848Data.alias)
    self:DestroySelf()
end

function Q13014TriggerDreamCEnd:TriggerOut()
    print("TriggerOut")
end

return Q13014TriggerDreamCEnd
