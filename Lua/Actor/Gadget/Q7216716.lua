require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216716 = class("Q7216716", GadgetActorProxy)
Q7216716.defaultAlias = "Q7216716"
local Q72167ClientConfig = require("Quest/Client/Q72167ClientConfig")

local subIDs = Q72167ClientConfig.SubIDs
local npcs = Q72167ClientConfig.Npcs
local datas = Q72167ClientConfig.Datas

function Q7216716:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216716:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216716:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72167"):FinishQuestID(false, 7216716)
    self:DestroySelf()
end

function Q7216716:TriggerOut()
    print("TriggerOut")
end

return Q7216716
