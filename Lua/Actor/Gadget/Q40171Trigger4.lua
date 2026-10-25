require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40171Trigger4 = class("Q40171Trigger4", GadgetActorProxy)
Q40171Trigger4.defaultAlias = "Q40171Trigger4"
local Q40171ClientConfig = require("Quest/Client/Q40171ClientConfig")

local this
local subIDs = Q40171ClientConfig.SubIDs
local datas = Q40171ClientConfig.Datas
local npcs = Q40171ClientConfig.Npcs
local points = Q40171ClientConfig.Points

function Q40171Trigger4:OnPostDataPrepare()
    print("Q40171Trigger4 - OnPostDataPrepare")
    this = self
end

function Q40171Trigger4:OnPostComponentPrepare()
    print("Q40171Trigger4 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40171)
end

function Q40171Trigger4:TriggerIn()
    print("Q40171Trigger4 - TriggerIn")
    actorMgr:GetActor("40171"):CallDelayByQuest("1", 0.5, function(arg1)
        actorMgr:GetActor("40171"):GetQuestNpcActor(npcs.Npc14603.alias, 40171):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, false)
    end)

    this:DestroySelf()
end

function Q40171Trigger4:PreTriggerIn()
    print("Q40171Trigger4 - PreTriggerIn")
end

function Q40171Trigger4:LightUpTriggerIn()
    print("Q40171Trigger4 - LightUpTriggerIn")
end

function Q40171Trigger4:TriggerOut()
    print("Q40171Trigger4 - TriggerOut")
end

return Q40171Trigger4
