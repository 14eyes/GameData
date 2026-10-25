require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020001Trigger_yespaimon_down = class("Q4020001Trigger_yespaimon_down", GadgetActorProxy)
Q4020001Trigger_yespaimon_down.defaultAlias = "Q4020001Trigger_yespaimon_down"
local Q40200ClientConfig = require("Quest/Client/Q40200ClientConfig")

local this
local subIDs = Q40200ClientConfig.SubIDs
local datas = Q40200ClientConfig.Datas
local npcs = Q40200ClientConfig.Npcs
local points = Q40200ClientConfig.Points

function Q4020001Trigger_yespaimon_down:OnPostDataPrepare()
    print("Q4020001Trigger_yespaimon_down - OnPostDataPrepare")
    this = self
end

function Q4020001Trigger_yespaimon_down:OnPostComponentPrepare()
    print("Q4020001Trigger_yespaimon_down - OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40200)
end

function Q4020001Trigger_yespaimon_down:TriggerIn()
    print("Q4020001Trigger_yespaimon_down - TriggerIn")
end

function Q4020001Trigger_yespaimon_down:PreTriggerIn()
    print("Q4020001Trigger_yespaimon_down - PreTriggerIn")
end

function Q4020001Trigger_yespaimon_down:LightUpTriggerIn()
    print("Q4020001Trigger_yespaimon_down - LightUpTriggerIn")
end

function Q4020001Trigger_yespaimon_down:TriggerOut()
    print("Q4020001Trigger_yespaimon_down - TriggerOut")
    actorMgr:GetActor("40200"):SetQuestVarByMainId(3, 0)
    if actorMgr:GetActor("40200"):GetQuestVar(4020001, 2) == 0 then
        if actorMgr:GetActor("40200"):GetQuestVar(4020001, 3) == 0 then
            globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
        end
    end
end

return Q4020001Trigger_yespaimon_down
