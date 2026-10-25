require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216705 = class("Q7216705", GadgetActorProxy)
Q7216705.defaultAlias = "Q7216705"
local Q72167ClientConfig = require("Quest/Client/Q72167ClientConfig")

local subIDs = Q72167ClientConfig.SubIDs
local npcs = Q72167ClientConfig.Npcs
local datas = Q72167ClientConfig.Datas

function Q7216705:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216705:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216705:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72167"):FinishQuestID(false, 7216705)
    self:DestroySelf()
end

function Q7216705:TriggerOut()
    print("TriggerOut")
end

return Q7216705
