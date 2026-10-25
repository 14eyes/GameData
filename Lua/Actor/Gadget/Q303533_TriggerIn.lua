require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303533_TriggerIn = class("Q303533_TriggerIn", GadgetActorProxy)
Q303533_TriggerIn.defaultAlias = "Q303533_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303533_TriggerIn:OnPostDataPrepare()
    print("Q303533_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303533_TriggerIn:OnPostComponentPrepare()
    print("Q303533_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303533_TriggerIn:TriggerIn()
    print("Q303533_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):PlayCutsceneIndex(30353301, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {303534})
        actorMgr:GetActor("3035"):RequestInteraction(npcs.Npc20846.alias, "", true)
    end, nil, nil, false)

    this:DestroySelf()
end

function Q303533_TriggerIn:PreTriggerIn()
    print("Q303533_TriggerIn - PreTriggerIn")
end

function Q303533_TriggerIn:LightUpTriggerIn()
    print("Q303533_TriggerIn - LightUpTriggerIn")
end

function Q303533_TriggerIn:TriggerOut()
    print("Q303533_TriggerIn - TriggerOut")
end

return Q303533_TriggerIn
