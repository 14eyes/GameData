require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217339 = class("Q7217339", GadgetActorProxy)
Q7217339.defaultAlias = "Q7217339"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217339:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217339:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217339:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):RequestInteraction(npcs.Npc20322Data.alias)
    self:DestroySelf()
end

function Q7217339:TriggerOut()
    print("TriggerOut")
end

return Q7217339
