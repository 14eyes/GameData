require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8009Trigger7 = class("Q8009Trigger7", GadgetActorProxy)
Q8009Trigger7.defaultAlias = "Q8009Trigger7"
local Q8009ClientConfig = require("Quest/Client/Q8009ClientConfig")

local this
local subIDs = Q8009ClientConfig.SubIDs
local npcs = Q8009ClientConfig.Npcs
local datas = Q8009ClientConfig.Datas

function Q8009Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8009Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8009Trigger7:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8009"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 800909)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q8009Trigger7:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8009Trigger7:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("8009"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q8009Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q8009Trigger7
