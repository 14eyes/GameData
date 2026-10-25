require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q802106_Trigger1 = class("Q802106_Trigger1", GadgetActorProxy)
Q802106_Trigger1.defaultAlias = "Q802106_Trigger1"
local Q8021ClientConfig = require("Quest/Client/Q8021ClientConfig")

local this
local subIDs = Q8021ClientConfig.SubIDs
local datas = Q8021ClientConfig.Datas
local npcs = Q8021ClientConfig.Npcs
local points = Q8021ClientConfig.Points

function Q802106_Trigger1:OnPostDataPrepare()
    print("Q802106_Trigger1 - OnPostDataPrepare")
    this = self
end

function Q802106_Trigger1:OnPostComponentPrepare()
    print("Q802106_Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8021)
end

function Q802106_Trigger1:TriggerIn()
    print("Q802106_Trigger1 - TriggerIn")
    actorUtils.FinishQuestID(false, 802106)
    this:DestroySelf()
end

function Q802106_Trigger1:PreTriggerIn()
    print("Q802106_Trigger1 - PreTriggerIn")
end

function Q802106_Trigger1:LightUpTriggerIn()
    print("Q802106_Trigger1 - LightUpTriggerIn")
    actorMgr:GetActor("8021"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, function(arg1)
        actorMgr:GetActor("8021"):QuestNarratorTask(datas.Narrator802106, nil)
    end, nil, 0, false, true)
end

function Q802106_Trigger1:TriggerOut()
    print("Q802106_Trigger1 - TriggerOut")
end

return Q802106_Trigger1
