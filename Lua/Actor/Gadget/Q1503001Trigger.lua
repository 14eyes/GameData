require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503001Trigger = class("Q1503001Trigger", GadgetActorProxy)
Q1503001Trigger.defaultAlias = "Q1503001Trigger"
local Q15030ClientConfig = require("Quest/Client/Q15030ClientConfig")

local this
local subIDs = Q15030ClientConfig.SubIDs
local npcs = Q15030ClientConfig.Npcs
local points = Q15030ClientConfig.Points

function Q1503001Trigger:OnPostDataPrepare()
    print("Q1503001Trigger - OnPostDataPrepare")
    this = self
end

function Q1503001Trigger:OnPostComponentPrepare()
    print("Q1503001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15030)
end

function Q1503001Trigger:TriggerIn()
    print("Q1503001Trigger - TriggerIn")
    actorMgr:GetActor("15030"):CallDelayByQuest("1", 0.5, function(arg1)
        actorMgr:GetActor("15030"):GetQuestNpcActor(npcs.Npc1098.alias, 15030):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Normal01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true, false)
    end)

    this:DestroySelf()
end

function Q1503001Trigger:PreTriggerIn()
    print("Q1503001Trigger - PreTriggerIn")
end

function Q1503001Trigger:LightUpTriggerIn()
    print("Q1503001Trigger - LightUpTriggerIn")
end

function Q1503001Trigger:TriggerOut()
    print("Q1503001Trigger - TriggerOut")
end

return Q1503001Trigger
