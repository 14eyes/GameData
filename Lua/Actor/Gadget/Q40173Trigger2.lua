require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40173Trigger2 = class("Q40173Trigger2", GadgetActorProxy)
Q40173Trigger2.defaultAlias = "Q40173Trigger2"
local Q40173ClientConfig = require("Quest/Client/Q40173ClientConfig")

local this
local subIDs = Q40173ClientConfig.SubIDs
local datas = Q40173ClientConfig.Datas
local npcs = Q40173ClientConfig.Npcs
local points = Q40173ClientConfig.Points

function Q40173Trigger2:OnPostDataPrepare()
    print("Q40173Trigger2 - OnPostDataPrepare")
    this = self
end

function Q40173Trigger2:OnPostComponentPrepare()
    print("Q40173Trigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40173)
end

function Q40173Trigger2:TriggerIn()
    print("Q40173Trigger2 - TriggerIn")
    actorMgr:GetActor("40173"):CallDelayByQuest("1", 0.5, function(arg1)
        actorMgr:GetActor("40173"):GetQuestNpcActor(npcs.Npc14603.alias, 40173):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, false)
    end)

    this:DestroySelf()
end

function Q40173Trigger2:PreTriggerIn()
    print("Q40173Trigger2 - PreTriggerIn")
end

function Q40173Trigger2:LightUpTriggerIn()
    print("Q40173Trigger2 - LightUpTriggerIn")
end

function Q40173Trigger2:TriggerOut()
    print("Q40173Trigger2 - TriggerOut")
end

return Q40173Trigger2
