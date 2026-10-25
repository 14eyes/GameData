require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19015Trigger_TrainningArea = class("Q19015Trigger_TrainningArea", GadgetActorProxy)
Q19015Trigger_TrainningArea.defaultAlias = "Q19015Trigger_TrainningArea"
local Q19015ClientConfig = require("Quest/Client/Q19015ClientConfig")

local subIDs = Q19015ClientConfig.SubIDs
local npcs = Q19015ClientConfig.Npcs
local datas = Q19015ClientConfig.Datas

function Q19015Trigger_TrainningArea:TriggerTouch()
    print("TriggerTouch")
    print("1901511_Fail")
    actorMgr:GetActor("19015"):FinishQuestID(true, 1901511)
    self:DestroySelf()
end

function Q19015Trigger_TrainningArea:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19015Trigger_TrainningArea:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    print("OnPostComponentPrepare_1901502")
    self:AddCommonPolygonTrigger(1, "COOP_Sayu_TrainningArea", 2, false, nil, self.TriggerTouch)
end

return Q19015Trigger_TrainningArea
