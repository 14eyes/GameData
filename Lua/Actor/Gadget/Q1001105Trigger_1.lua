require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001105Trigger_1 = class("Q1001105Trigger_1", GadgetActorProxy)
Q1001105Trigger_1.defaultAlias = "Q1001105Trigger_1"
local Q10011ClientConfig = require("Quest/Client/Q10011ClientConfig")

local this
local subIDs = Q10011ClientConfig.SubIDs
local datas = Q10011ClientConfig.Datas
local npcs = Q10011ClientConfig.Npcs
local points = Q10011ClientConfig.Points

function Q1001105Trigger_1:OnPostDataPrepare()
    print("Q1001105Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1001105Trigger_1:OnPostComponentPrepare()
    print("Q1001105Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 5, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10011)
end

function Q1001105Trigger_1:TriggerIn()
    print("Q1001105Trigger_1 - TriggerIn")
    if actorMgr:GetActor("10011"):GetQuestVar(1001105, 1) == 0 then
        actorMgr:GetActor("10011"):ShowTutorialDialog(2673, function(arg1)
            actorMgr:GetActor("10011"):SetQuestVarByMainId(1, 1)
            this:DestroySelf()
        end)
    end
end

function Q1001105Trigger_1:PreTriggerIn()
    print("Q1001105Trigger_1 - PreTriggerIn")
end

function Q1001105Trigger_1:LightUpTriggerIn()
    print("Q1001105Trigger_1 - LightUpTriggerIn")
end

function Q1001105Trigger_1:TriggerOut()
    print("Q1001105Trigger_1 - TriggerOut")
end

return Q1001105Trigger_1
