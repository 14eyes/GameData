require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20519 = class("Quest20519", QuestActorProxy)
Quest20519.defaultAlias = "Quest20519"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20519:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20519:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2051901"] = self.OnSubStart2051901,
        ["2051902"] = self.OnSubStart2051902,
        ["2051903"] = self.OnSubStart2051903,
        ["2051904"] = self.OnSubStart2051904
    }
end

function Quest20519:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2051901"] = self.OnSubFinish2051901,
        ["2051902"] = self.OnSubFinish2051902,
        ["2051903"] = self.OnSubFinish2051903,
        ["2051904"] = self.OnSubFinish2051904
    }
end

function Quest20519:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2051901"] = self.OnSubFailed2051901,
        ["2051902"] = self.OnSubFailed2051902,
        ["2051903"] = self.OnSubFailed2051903,
        ["2051904"] = self.OnSubFailed2051904
    }
end

function Quest20519:Start()
    print("Start")
end

function Quest20519:OnDestroy()
    print("OnDestroy")
end

function Quest20519:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.BlackScreen)
end

function Quest20519:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0, self.ClearData)
end

function Quest20519:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:CallDelay(0, self.ClearData)
end

function Quest20519:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData)
    self:EnablePlayerInput(true)
end

function Quest20519:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1525Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1433Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1473Data.alias, 1008)
end

function Quest20519:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:NarratorOnlyTask(datas.NarratorTable_1)
    end
end

function Quest20519:OnSubStart2051901(arg1)
    print("OnSubStart2051901")
    self:CreateQuestNpc(arg1, npcs.Npc1525Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1433Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1473Data.id, 3)
end

function Quest20519:OnSubFinish2051901(arg1)
    print("OnSubFinish2051901")
end

function Quest20519:OnSubFailed2051901(arg1)
    print("OnSubFailed2051901")
end

function Quest20519:OnSubStart2051902(arg1)
    print("OnSubStart2051902")
end

function Quest20519:OnSubFinish2051902(arg1)
    print("OnSubFinish2051902")
end

function Quest20519:OnSubFailed2051902(arg1)
    print("OnSubFailed2051902")
end

function Quest20519:OnSubStart2051903(arg1)
    print("OnSubStart2051903")
end

function Quest20519:OnSubFinish2051903(arg1)
    print("OnSubFinish2051903")
    self:NarratorOnlyTask(datas.NarratorTable_2)
end

function Quest20519:OnSubFailed2051903(arg1)
    print("OnSubFailed2051903")
end

function Quest20519:OnSubStart2051904(arg1)
    print("OnSubStart2051904")
end

function Quest20519:OnSubFinish2051904(arg1)
    print("OnSubFinish2051904")
end

function Quest20519:OnSubFailed2051904(arg1)
    print("OnSubFailed2051904")
end

return Quest20519
