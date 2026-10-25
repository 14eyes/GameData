require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800701_TriggerIn = class("Q800701_TriggerIn", GadgetActorProxy)
Q800701_TriggerIn.defaultAlias = "Q800701_TriggerIn"
local Q8007ClientConfig = require("Quest/Client/Q8007ClientConfig")

local subIDs = Q8007ClientConfig.SubIDs
local npcs = Q8007ClientConfig.Npcs
local gadgets = Q8007ClientConfig.Gadgets
local datas = Q8007ClientConfig.Datas

function Q800701_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800701_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(25, 25, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800701_TriggerIn:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("8007")
    local questVar = actor:GetQuestVar(800701, 3)
    if questVar == 0 then
        print("QuestVar = ", questVar)
        actor:SetQuestVar(800701, 3, 1)
        actor:PlayCutsceneIndex(80070101, function(arg1)
            actorUtils.FinishQuestID(false, 800701)
        end, nil, nil, false)
    end

    self:DestroySelf()
end

function Q800701_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q800701_TriggerIn
