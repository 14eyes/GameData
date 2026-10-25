require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger20 = class("Q5026Trigger20", GadgetActorProxy)
Q5026Trigger20.defaultAlias = "Q5026Trigger20"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger20:OnPostDataPrepare()
    print("Q5026Trigger20 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger20:OnPostComponentPrepare()
    print("Q5026Trigger20 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger20:TriggerIn()
    print("Q5026Trigger20 - TriggerIn")
    actorMgr:GetActor("5026"):CallDelayByQuest("1", 1, function(arg1)
        actorMgr:GetActor("5026"):GetQuestNpcActor(npcs.Npc14600.alias, 5026):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, false, true)
    end)

    this:DestroySelf()
end

function Q5026Trigger20:PreTriggerIn()
    print("Q5026Trigger20 - PreTriggerIn")
end

function Q5026Trigger20:LightUpTriggerIn()
    print("Q5026Trigger20 - LightUpTriggerIn")
end

function Q5026Trigger20:TriggerOut()
    print("Q5026Trigger20 - TriggerOut")
end

return Q5026Trigger20
