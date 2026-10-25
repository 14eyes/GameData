require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400209_Trigger = class("Q400209_Trigger", GadgetActorProxy)
Q400209_Trigger.defaultAlias = "Q400209_Trigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400209_Trigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400209_Trigger] OnPostDataPrepare")
    this = self
end

function Q400209_Trigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400209_Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(17, 50, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400209_Trigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400209_Trigger] TriggerIn")
    actorMgr:GetActor("4002"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4002")
        actor:CreateQuestNpcById(400209, npcs.Npc13315Data.id, 2)
        actor:RequestInteraction(npcs.Npc13315Data.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q400209_Trigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400209_Trigger] PreTriggerIn")
end

function Q400209_Trigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400209_Trigger] LightUpTriggerIn")
end

function Q400209_Trigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400209_Trigger] TriggerOut")
end

return Q400209_Trigger
