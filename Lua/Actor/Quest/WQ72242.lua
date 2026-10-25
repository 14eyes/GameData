require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72242 = class("Quest72242", QuestActorProxy)
Quest72242.defaultAlias = "Quest72242"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72242:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72242:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7224201"] = self.OnSubStart7224201,
        ["7224202"] = self.OnSubStart7224202,
        ["7224203"] = self.OnSubStart7224203,
        ["7224204"] = self.OnSubStart7224204,
        ["7224212"] = self.OnSubStart7224212,
        ["7224205"] = self.OnSubStart7224205,
        ["7224206"] = self.OnSubStart7224206,
        ["7224215"] = self.OnSubStart7224215,
        ["7224216"] = self.OnSubStart7224216,
        ["7224217"] = self.OnSubStart7224217,
        ["7224218"] = self.OnSubStart7224218,
        ["7224219"] = self.OnSubStart7224219,
        ["7224220"] = self.OnSubStart7224220,
        ["7224207"] = self.OnSubStart7224207,
        ["7224208"] = self.OnSubStart7224208,
        ["7224209"] = self.OnSubStart7224209,
        ["7224210"] = self.OnSubStart7224210,
        ["7224211"] = self.OnSubStart7224211,
        ["7224213"] = self.OnSubStart7224213,
        ["7224214"] = self.OnSubStart7224214
    }
end

function Quest72242:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7224201"] = self.OnSubFinish7224201,
        ["7224202"] = self.OnSubFinish7224202,
        ["7224203"] = self.OnSubFinish7224203,
        ["7224204"] = self.OnSubFinish7224204,
        ["7224212"] = self.OnSubFinish7224212,
        ["7224205"] = self.OnSubFinish7224205,
        ["7224206"] = self.OnSubFinish7224206,
        ["7224215"] = self.OnSubFinish7224215,
        ["7224216"] = self.OnSubFinish7224216,
        ["7224217"] = self.OnSubFinish7224217,
        ["7224218"] = self.OnSubFinish7224218,
        ["7224219"] = self.OnSubFinish7224219,
        ["7224220"] = self.OnSubFinish7224220,
        ["7224207"] = self.OnSubFinish7224207,
        ["7224208"] = self.OnSubFinish7224208,
        ["7224209"] = self.OnSubFinish7224209,
        ["7224210"] = self.OnSubFinish7224210,
        ["7224211"] = self.OnSubFinish7224211,
        ["7224213"] = self.OnSubFinish7224213,
        ["7224214"] = self.OnSubFinish7224214
    }
end

function Quest72242:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72242:Start()
    print("Start")
end

function Quest72242:OnDestroy()
    print("OnDestroy")
end

function Quest72242:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72242:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72242:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72242:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("InvokeOnInteraction param = " .. arg1)
        self:FinishQuestID(false, 7224213)
    elseif arg1 == 2 then
        print("InvokeOnInteraction param = " .. arg1)
    end
end

function Quest72242:SummonPaimon(arg1)
    print("SummonPaimon")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, arg1, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72242:VanishPaimon()
    print("VanishPaimon")
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
    questNpcActor:DestroyWithDisappear(false)
end

function Quest72242:OnSubStart7224201(arg1)
    print("OnSubStart7224201")
    actorMgr:CreateActorWithPos("Q7224201Trigger", "Actor/Gadget/Q7224201Trigger", 70900002, 0, {x = -193.8817, y = 202.7793, z = 1617.432}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72242:OnSubFinish7224201(arg1)
    print("OnSubFinish7224201")
end

function Quest72242:OnSubStart7224202(arg1)
    print("OnSubStart7224202")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7224201", function(arg1)
            arg1:FinishQuestID(false, 7224202)
        end, nil, nil, false)
    end)
end

function Quest72242:OnSubFinish7224202(arg1)
    print("OnSubFinish7224202")
end

function Quest72242:OnSubStart7224203(arg1)
    print("OnSubStart7224203")
    self:EnablePlayerInput(false)
    self:SummonPaimon(7224203)
    self:EnablePlayerInput(true)
end

function Quest72242:OnSubFinish7224203(arg1)
    print("OnSubFinish7224203")
    self:VanishPaimon()
end

function Quest72242:OnSubStart7224204(arg1)
    print("OnSubStart7224204")
    actorMgr:CreateActorWithPos("Q7224204Trigger", "Actor/Gadget/Q7224204Trigger", 70900002, 0, {x = -102.035, y = 226.9287, z = 1577.059}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72242:OnSubFinish7224204(arg1)
    print("OnSubFinish7224204")
end

function Quest72242:OnSubStart7224212(arg1)
    print("OnSubStart7224212")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7224202", function(arg1)
            arg1:FinishQuestID(false, 7224212)
        end, nil, nil, false)
    end)
end

function Quest72242:OnSubFinish7224212(arg1)
    print("OnSubFinish7224212")
end

function Quest72242:OnSubStart7224205(arg1)
    print("OnSubStart7224205")
    self:EnablePlayerInput(false)
    self:SummonPaimon(7224205)
    self:EnablePlayerInput(true)
end

function Quest72242:OnSubFinish7224205(arg1)
    print("OnSubFinish7224205")
    self:VanishPaimon()
end

function Quest72242:OnSubStart7224206(arg1)
    print("OnSubStart7224206")
end

function Quest72242:OnSubFinish7224206(arg1)
    print("OnSubFinish7224206")
end

function Quest72242:OnSubStart7224215(arg1)
    print("OnSubStart7224215")
end

function Quest72242:OnSubFinish7224215(arg1)
    print("OnSubFinish7224215")
end

function Quest72242:OnSubStart7224216(arg1)
    print("OnSubStart7224216")
end

function Quest72242:OnSubFinish7224216(arg1)
    print("OnSubFinish7224216")
end

function Quest72242:OnSubStart7224217(arg1)
    print("OnSubStart7224217")
end

function Quest72242:OnSubFinish7224217(arg1)
    print("OnSubFinish7224217")
end

function Quest72242:OnSubStart7224218(arg1)
    print("OnSubStart7224218")
end

function Quest72242:OnSubFinish7224218(arg1)
    print("OnSubFinish7224218")
end

function Quest72242:OnSubStart7224219(arg1)
    print("OnSubStart7224219")
end

function Quest72242:OnSubFinish7224219(arg1)
    print("OnSubFinish7224219")
end

function Quest72242:OnSubStart7224220(arg1)
    print("OnSubStart7224220")
end

function Quest72242:OnSubFinish7224220(arg1)
    print("OnSubFinish7224220")
end

function Quest72242:OnSubStart7224207(arg1)
    print("OnSubStart7224207")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7224203", function(arg1)
            arg1:FinishQuestID(false, 7224207)
        end, nil, nil, false)
    end)
end

function Quest72242:OnSubFinish7224207(arg1)
    print("OnSubFinish7224207")
    self:NarratorOnlyTask(datas.Reminder_01, nil, "")
end

function Quest72242:OnSubStart7224208(arg1)
    print("OnSubStart7224208")
end

function Quest72242:OnSubFinish7224208(arg1)
    print("OnSubFinish7224208")
    self:NarratorOnlyTask(datas.Reminder_02, nil, "")
end

function Quest72242:OnSubStart7224209(arg1)
    print("OnSubStart7224209")
    actorMgr:CreateActorWithPos("Q7224209Trigger", "Actor/Gadget/Q7224209Trigger", 70900002, 0, {x = 105.7989, y = 200.0341, z = 1252.719}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72242:OnSubFinish7224209(arg1)
    print("OnSubFinish7224209")
end

function Quest72242:OnSubStart7224210(arg1)
    print("OnSubStart7224210")
    actorMgr:CreateActorWithPos("Q7224210Trigger", "Actor/Gadget/Q7224210Trigger", 70900002, 0, {x = 140.7515, y = 215.8685, z = 1144.191}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72242:OnSubFinish7224210(arg1)
    print("OnSubFinish7224210")
    self:NarratorOnlyTask(datas.Reminder_03, nil, "")
end

function Quest72242:OnSubStart7224211(arg1)
    print("OnSubStart7224211")
end

function Quest72242:OnSubFinish7224211(arg1)
    print("OnSubFinish7224211")
end

function Quest72242:OnSubStart7224213(arg1)
    print("OnSubStart7224213")
end

function Quest72242:OnSubFinish7224213(arg1)
    print("OnSubFinish7224213")
end

function Quest72242:OnSubStart7224214(arg1)
    print("OnSubStart7224214")
    actorMgr:CreateActorWithPos("Q7224214Trigger", "Actor/Gadget/Q7224214Trigger", 70900002, 0, {x = 135.7154, y = 217.08, z = 1139.133}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72242:OnSubFinish7224214(arg1)
    print("OnSubFinish7224214")
    self:VanishPaimon()
end

return Quest72242
