require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101903Trigger = class("Q1101903Trigger", GadgetActorProxy)
Q1101903Trigger.defaultAlias = "Q1101903Trigger"
local Q11019ClientConfig = require("Quest/Client/Q11019ClientConfig")

local this
local subIDs = Q11019ClientConfig.SubIDs
local npcs = Q11019ClientConfig.Npcs
local gadgets = Q11019ClientConfig.Gadgets
local datas = Q11019ClientConfig.Datas

function Q1101903Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1101903Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(76.27792, 33.87173, 22.1479, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101903Trigger:TriggerIn()
    print("TriggerIn")
end

function Q1101903Trigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("11019")
    actor:StopNarrator()
    actor:ClearNarratorTask()
    actor:NarratorOnlyTaskByData(datas.NarratorWithId1101903, nil, 11019)
    actor:CallDelay(3, function(arg1)
        actorUtils.FinishQuestID(true, 1101903)
    end)

    this:DestroySelf()
end

return Q1101903Trigger
