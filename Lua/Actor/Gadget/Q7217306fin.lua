require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217306fin = class("Q7217306fin", GadgetActorProxy)
Q7217306fin.defaultAlias = "Q7217306fin"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217306fin:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217306fin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217306fin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):FinishQuestID(false, 7217306)
    self:DestroySelf()
end

function Q7217306fin:TriggerOut()
    print("TriggerOut")
end

return Q7217306fin
