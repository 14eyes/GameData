require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016449Trigger = class("Q4016449Trigger", GadgetActorProxy)
Q4016449Trigger.defaultAlias = "Q4016449Trigger"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016449Trigger:OnPostDataPrepare()
    print("Q4016449Trigger - OnPostDataPrepare")
    this = self
end

function Q4016449Trigger:OnPostComponentPrepare()
    print("Q4016449Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(45, 90, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016449Trigger:TriggerIn()
    print("Q4016449Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4016449)
    this:DestroySelf()
end

function Q4016449Trigger:PreTriggerIn()
    print("Q4016449Trigger - PreTriggerIn")
end

function Q4016449Trigger:LightUpTriggerIn()
    print("Q4016449Trigger - LightUpTriggerIn")
end

function Q4016449Trigger:TriggerOut()
    print("Q4016449Trigger - TriggerOut")
end

return Q4016449Trigger
