require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019028Trigger = class("Q4019028Trigger", GadgetActorProxy)
Q4019028Trigger.defaultAlias = "Q4019028Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019028Trigger:OnPostDataPrepare()
    print("Q4019028Trigger - OnPostDataPrepare")
    this = self
end

function Q4019028Trigger:OnPostComponentPrepare()
    print("Q4019028Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019028Trigger:TriggerIn()
    print("Q4019028Trigger - TriggerIn")
    actorMgr:GetActor("40190"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, nil, function(arg1)
        actorMgr:GetActor("40190"):TransmitPlayerWithDialogTextByQuestId(4019019, 1, datas.DialogIdsData40190, 0, nil, nil, nil)
    end, nil, 0, false, true)

    this:DestroySelf()
end

function Q4019028Trigger:PreTriggerIn()
    print("Q4019028Trigger - PreTriggerIn")
end

function Q4019028Trigger:LightUpTriggerIn()
    print("Q4019028Trigger - LightUpTriggerIn")
end

function Q4019028Trigger:TriggerOut()
    print("Q4019028Trigger - TriggerOut")
end

return Q4019028Trigger
