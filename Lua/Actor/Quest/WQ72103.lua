require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72103 = class("Quest72103", QuestActorProxy)
Quest72103.defaultAlias = "Quest72103"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72103:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7210325"] = self.OnSubStart7210325,
        ["7210335"] = self.OnSubStart7210335,
        ["7210336"] = self.OnSubStart7210336,
        ["7210315"] = self.OnSubStart7210315,
        ["7210321"] = self.OnSubStart7210321,
        ["7210319"] = self.OnSubStart7210319,
        ["7210320"] = self.OnSubStart7210320,
        ["7210322"] = self.OnSubStart7210322,
        ["7210323"] = self.OnSubStart7210323,
        ["7210316"] = self.OnSubStart7210316,
        ["7210324"] = self.OnSubStart7210324,
        ["7210301"] = self.OnSubStart7210301,
        ["7210302"] = self.OnSubStart7210302,
        ["7210303"] = self.OnSubStart7210303,
        ["7210304"] = self.OnSubStart7210304,
        ["7210305"] = self.OnSubStart7210305,
        ["7210306"] = self.OnSubStart7210306,
        ["7210307"] = self.OnSubStart7210307,
        ["7210326"] = self.OnSubStart7210326,
        ["7210327"] = self.OnSubStart7210327,
        ["7210328"] = self.OnSubStart7210328,
        ["7210329"] = self.OnSubStart7210329,
        ["7210330"] = self.OnSubStart7210330,
        ["7210331"] = self.OnSubStart7210331,
        ["7210332"] = self.OnSubStart7210332,
        ["7210333"] = self.OnSubStart7210333,
        ["7210334"] = self.OnSubStart7210334,
        ["7210308"] = self.OnSubStart7210308,
        ["7210309"] = self.OnSubStart7210309,
        ["7210310"] = self.OnSubStart7210310,
        ["7210311"] = self.OnSubStart7210311,
        ["7210312"] = self.OnSubStart7210312,
        ["7210313"] = self.OnSubStart7210313,
        ["7210314"] = self.OnSubStart7210314,
        ["7210317"] = self.OnSubStart7210317,
        ["7210318"] = self.OnSubStart7210318
    }
end

function Quest72103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7210325"] = self.OnSubFinish7210325,
        ["7210335"] = self.OnSubFinish7210335,
        ["7210336"] = self.OnSubFinish7210336,
        ["7210315"] = self.OnSubFinish7210315,
        ["7210321"] = self.OnSubFinish7210321,
        ["7210319"] = self.OnSubFinish7210319,
        ["7210320"] = self.OnSubFinish7210320,
        ["7210322"] = self.OnSubFinish7210322,
        ["7210323"] = self.OnSubFinish7210323,
        ["7210316"] = self.OnSubFinish7210316,
        ["7210324"] = self.OnSubFinish7210324,
        ["7210301"] = self.OnSubFinish7210301,
        ["7210302"] = self.OnSubFinish7210302,
        ["7210303"] = self.OnSubFinish7210303,
        ["7210304"] = self.OnSubFinish7210304,
        ["7210305"] = self.OnSubFinish7210305,
        ["7210306"] = self.OnSubFinish7210306,
        ["7210307"] = self.OnSubFinish7210307,
        ["7210326"] = self.OnSubFinish7210326,
        ["7210327"] = self.OnSubFinish7210327,
        ["7210328"] = self.OnSubFinish7210328,
        ["7210329"] = self.OnSubFinish7210329,
        ["7210330"] = self.OnSubFinish7210330,
        ["7210331"] = self.OnSubFinish7210331,
        ["7210332"] = self.OnSubFinish7210332,
        ["7210333"] = self.OnSubFinish7210333,
        ["7210334"] = self.OnSubFinish7210334,
        ["7210308"] = self.OnSubFinish7210308,
        ["7210309"] = self.OnSubFinish7210309,
        ["7210310"] = self.OnSubFinish7210310,
        ["7210311"] = self.OnSubFinish7210311,
        ["7210312"] = self.OnSubFinish7210312,
        ["7210313"] = self.OnSubFinish7210313,
        ["7210314"] = self.OnSubFinish7210314,
        ["7210317"] = self.OnSubFinish7210317,
        ["7210318"] = self.OnSubFinish7210318
    }
end

function Quest72103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7210325"] = self.OnSubFailed7210325,
        ["7210335"] = self.OnSubFailed7210335,
        ["7210336"] = self.OnSubFailed7210336,
        ["7210315"] = self.OnSubFailed7210315,
        ["7210321"] = self.OnSubFailed7210321,
        ["7210319"] = self.OnSubFailed7210319,
        ["7210320"] = self.OnSubFailed7210320,
        ["7210322"] = self.OnSubFailed7210322,
        ["7210323"] = self.OnSubFailed7210323,
        ["7210316"] = self.OnSubFailed7210316,
        ["7210324"] = self.OnSubFailed7210324,
        ["7210301"] = self.OnSubFailed7210301,
        ["7210302"] = self.OnSubFailed7210302,
        ["7210303"] = self.OnSubFailed7210303,
        ["7210304"] = self.OnSubFailed7210304,
        ["7210305"] = self.OnSubFailed7210305,
        ["7210306"] = self.OnSubFailed7210306,
        ["7210307"] = self.OnSubFailed7210307,
        ["7210326"] = self.OnSubFailed7210326,
        ["7210327"] = self.OnSubFailed7210327,
        ["7210328"] = self.OnSubFailed7210328,
        ["7210329"] = self.OnSubFailed7210329,
        ["7210330"] = self.OnSubFailed7210330,
        ["7210331"] = self.OnSubFailed7210331,
        ["7210332"] = self.OnSubFailed7210332,
        ["7210333"] = self.OnSubFailed7210333,
        ["7210334"] = self.OnSubFailed7210334,
        ["7210308"] = self.OnSubFailed7210308,
        ["7210309"] = self.OnSubFailed7210309,
        ["7210310"] = self.OnSubFailed7210310,
        ["7210311"] = self.OnSubFailed7210311,
        ["7210312"] = self.OnSubFailed7210312,
        ["7210313"] = self.OnSubFailed7210313,
        ["7210314"] = self.OnSubFailed7210314,
        ["7210317"] = self.OnSubFailed7210317,
        ["7210318"] = self.OnSubFailed7210318
    }
end

function Quest72103:Start()
    print("Start")
end

function Quest72103:OnDestroy()
    print("OnDestroy")
end

function Quest72103:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72103:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72103:inputoff()
    print("inputoff")
    self:EnablePlayerInput(false)
end

function Quest72103:inputon()
    print("inputon")
    self:EnablePlayerInput(true)
end

function Quest72103:interaction()
    print("interaction")
    self:RequestInteraction(npcs.Npc20223Data.alias)
end

function Quest72103:InvokeOnInteraction(arg1)
    if arg1 == 7210339 then
        print("Qianwen7210339")
        self:ShowReadingDialog(101664)
    end
end

function Quest72103:OnSubStart7210325(arg1)
    if self:GetSubQuestState(7210319) ~= 2 then
        self:CreateQuestNpc(arg1, npcs.Npc20223Data.id, 1)
    end
end

function Quest72103:OnSubFinish7210325(arg1)
    print("OnSubFinish7210325")
end

function Quest72103:OnSubFailed7210325(arg1)
    print("OnSubFailed7210325")
end

function Quest72103:OnSubStart7210335(arg1)
    print("OnSubStart7210335")
    self:FinishQuestID(false, 7210335)
end

function Quest72103:OnSubFinish7210335(arg1)
    print("OnSubFinish7210335")
end

function Quest72103:OnSubFailed7210335(arg1)
    print("OnSubFailed7210335")
end

function Quest72103:OnSubStart7210336(arg1)
    print("OnSubStart7210336")
    actorMgr:CreateActorWithPos(datas.Q72103Trigger_.alias, datas.Q72103Trigger_.script, datas.Q72103Trigger_.id, 0, datas.Q72103Trigger_.point.pos, datas.Q72103Trigger_.point.rot, true, false, 3)
end

function Quest72103:OnSubFinish7210336(arg1)
    print("OnSubFinish7210336")
end

function Quest72103:OnSubFailed7210336(arg1)
    print("OnSubFailed7210336")
end

function Quest72103:OnSubStart7210315(arg1)
    print("OnSubStart7210315")
    if self:GetSubQuestState(7226314) ~= 3 then
        self:CallDelay(0, self.inputoff)
        self:CallDelay(0.5, self.inputon)
        self:CallDelay(0, self.interaction)
    end
end

function Quest72103:OnSubFinish7210315(arg1)
    print("OnSubFinish7210315")
end

function Quest72103:OnSubFailed7210315(arg1)
    print("OnSubFailed7210315")
end

function Quest72103:OnSubStart7210321(arg1)
    print("OnSubStart7210321")
end

function Quest72103:OnSubFinish7210321(arg1)
    print("OnSubFinish7210321")
end

function Quest72103:OnSubFailed7210321(arg1)
    print("OnSubFailed7210321")
end

function Quest72103:OnSubStart7210319(arg1)
    print("OnSubStart7210319")
    self:GetQuestNpcActor(npcs.Npc20223Data.alias):HideSelf()
end

function Quest72103:OnSubFinish7210319(arg1)
    print("OnSubFinish7210319")
    self:GetQuestNpcActor(npcs.Npc20223Data.alias):ShowSelf()
end

function Quest72103:OnSubFailed7210319(arg1)
    print("OnSubFailed7210319")
end

function Quest72103:OnSubStart7210320(arg1)
    print("OnSubStart7210320")
    self:CreateQuestNpc(arg1, npcs.Npc20223Data.id, 1)
end

function Quest72103:OnSubFinish7210320(arg1)
    print("OnSubFinish7210320")
end

function Quest72103:OnSubFailed7210320(arg1)
    print("OnSubFailed7210320")
end

function Quest72103:OnSubStart7210322(arg1)
    print("OnSubStart7210322")
end

function Quest72103:OnSubFinish7210322(arg1)
    print("OnSubFinish7210322")
end

function Quest72103:OnSubFailed7210322(arg1)
    print("OnSubFailed7210322")
end

function Quest72103:OnSubStart7210323(arg1)
    print("OnSubStart7210323")
end

function Quest72103:OnSubFinish7210323(arg1)
    print("OnSubFinish7210323")
end

function Quest72103:OnSubFailed7210323(arg1)
    print("OnSubFailed7210323")
end

function Quest72103:OnSubStart7210316(arg1)
    print("OnSubStart7210316")
end

function Quest72103:OnSubFinish7210316(arg1)
    print("OnSubFinish7210316")
end

function Quest72103:OnSubFailed7210316(arg1)
    print("OnSubFailed7210316")
end

function Quest72103:OnSubStart7210324(arg1)
    print("OnSubStart7210324")
end

function Quest72103:OnSubFinish7210324(arg1)
    print("OnSubFinish7210324")
end

function Quest72103:OnSubFailed7210324(arg1)
    print("OnSubFailed7210324")
end

function Quest72103:OnSubStart7210301(arg1)
    print("OnSubStart7210301")
end

function Quest72103:OnSubFinish7210301(arg1)
    print("OnSubFinish7210301")
end

function Quest72103:OnSubFailed7210301(arg1)
    print("OnSubFailed7210301")
end

function Quest72103:OnSubStart7210302(arg1)
    print("OnSubStart7210302")
end

function Quest72103:OnSubFinish7210302(arg1)
    print("OnSubFinish7210302")
end

function Quest72103:OnSubFailed7210302(arg1)
    print("OnSubFailed7210302")
end

function Quest72103:OnSubStart7210303(arg1)
    print("OnSubStart7210303")
end

function Quest72103:OnSubFinish7210303(arg1)
    print("OnSubFinish7210303")
end

function Quest72103:OnSubFailed7210303(arg1)
    print("OnSubFailed7210303")
end

function Quest72103:OnSubStart7210304(arg1)
    print("OnSubStart7210304")
end

function Quest72103:OnSubFinish7210304(arg1)
    print("OnSubFinish7210304")
end

function Quest72103:OnSubFailed7210304(arg1)
    print("OnSubFailed7210304")
end

function Quest72103:OnSubStart7210305(arg1)
    print("OnSubStart7210305")
end

function Quest72103:OnSubFinish7210305(arg1)
    print("OnSubFinish7210305")
end

function Quest72103:OnSubFailed7210305(arg1)
    print("OnSubFailed7210305")
end

function Quest72103:OnSubStart7210306(arg1)
    print("OnSubStart7210306")
end

function Quest72103:OnSubFinish7210306(arg1)
    print("OnSubFinish7210306")
end

function Quest72103:OnSubFailed7210306(arg1)
    print("OnSubFailed7210306")
end

function Quest72103:OnSubStart7210307(arg1)
    print("OnSubStart7210307")
end

function Quest72103:OnSubFinish7210307(arg1)
    print("OnSubFinish7210307")
end

function Quest72103:OnSubFailed7210307(arg1)
    print("OnSubFailed7210307")
end

function Quest72103:OnSubStart7210326(arg1)
    print("OnSubStart7210326")
end

function Quest72103:OnSubFinish7210326(arg1)
    print("OnSubFinish7210326")
end

function Quest72103:OnSubFailed7210326(arg1)
    print("OnSubFailed7210326")
end

function Quest72103:OnSubStart7210327(arg1)
    print("OnSubStart7210327")
end

function Quest72103:OnSubFinish7210327(arg1)
    print("OnSubFinish7210327")
end

function Quest72103:OnSubFailed7210327(arg1)
    print("OnSubFailed7210327")
end

function Quest72103:OnSubStart7210328(arg1)
    print("OnSubStart7210328")
end

function Quest72103:OnSubFinish7210328(arg1)
    print("OnSubFinish7210328")
end

function Quest72103:OnSubFailed7210328(arg1)
    print("OnSubFailed7210328")
end

function Quest72103:OnSubStart7210329(arg1)
    print("OnSubStart7210329")
end

function Quest72103:OnSubFinish7210329(arg1)
    print("OnSubFinish7210329")
end

function Quest72103:OnSubFailed7210329(arg1)
    print("OnSubFailed7210329")
end

function Quest72103:OnSubStart7210330(arg1)
    print("OnSubStart7210330")
end

function Quest72103:OnSubFinish7210330(arg1)
    print("OnSubFinish7210330")
end

function Quest72103:OnSubFailed7210330(arg1)
    print("OnSubFailed7210330")
end

function Quest72103:OnSubStart7210331(arg1)
    print("OnSubStart7210331")
end

function Quest72103:OnSubFinish7210331(arg1)
    print("OnSubFinish7210331")
end

function Quest72103:OnSubFailed7210331(arg1)
    print("OnSubFailed7210331")
end

function Quest72103:OnSubStart7210332(arg1)
    print("OnSubStart7210332")
end

function Quest72103:OnSubFinish7210332(arg1)
    print("OnSubFinish7210332")
end

function Quest72103:OnSubFailed7210332(arg1)
    print("OnSubFailed7210332")
end

function Quest72103:OnSubStart7210333(arg1)
    print("OnSubStart7210333")
end

function Quest72103:OnSubFinish7210333(arg1)
    print("OnSubFinish7210333")
end

function Quest72103:OnSubFailed7210333(arg1)
    print("OnSubFailed7210333")
end

function Quest72103:OnSubStart7210334(arg1)
    print("OnSubStart7210334")
end

function Quest72103:OnSubFinish7210334(arg1)
    print("OnSubFinish7210334")
end

function Quest72103:OnSubFailed7210334(arg1)
    print("OnSubFailed7210334")
end

function Quest72103:OnSubStart7210308(arg1)
    print("OnSubStart7210308")
end

function Quest72103:OnSubFinish7210308(arg1)
    print("OnSubFinish7210308")
end

function Quest72103:OnSubFailed7210308(arg1)
    print("OnSubFailed7210308")
end

function Quest72103:OnSubStart7210309(arg1)
    print("OnSubStart7210309")
end

function Quest72103:OnSubFinish7210309(arg1)
    print("OnSubFinish7210309")
end

function Quest72103:OnSubFailed7210309(arg1)
    print("OnSubFailed7210309")
end

function Quest72103:OnSubStart7210310(arg1)
    print("OnSubStart7210310")
end

function Quest72103:OnSubFinish7210310(arg1)
    print("OnSubFinish7210310")
end

function Quest72103:OnSubFailed7210310(arg1)
    print("OnSubFailed7210310")
end

function Quest72103:OnSubStart7210311(arg1)
    print("OnSubStart7210311")
end

function Quest72103:OnSubFinish7210311(arg1)
    print("OnSubFinish7210311")
end

function Quest72103:OnSubFailed7210311(arg1)
    print("OnSubFailed7210311")
end

function Quest72103:OnSubStart7210312(arg1)
    if self:GetSubQuestState(7210319) ~= 2 then
        self:CreateQuestNpc(arg1, npcs.Npc20223Data.id, 1)
    end
end

function Quest72103:OnSubFinish7210312(arg1)
    print("OnSubFinish7210312")
end

function Quest72103:OnSubFailed7210312(arg1)
    print("OnSubFailed7210312")
end

function Quest72103:OnSubStart7210313(arg1)
    print("OnSubStart7210313")
end

function Quest72103:OnSubFinish7210313(arg1)
    print("OnSubFinish7210313")
end

function Quest72103:OnSubFailed7210313(arg1)
    print("OnSubFailed7210313")
end

function Quest72103:OnSubStart7210314(arg1)
    print("OnSubStart7210314")
end

function Quest72103:OnSubFinish7210314(arg1)
    print("OnSubFinish7210314")
end

function Quest72103:OnSubFailed7210314(arg1)
    print("OnSubFailed7210314")
end

function Quest72103:OnSubStart7210317(arg1)
    print("OnSubStart7210317")
end

function Quest72103:OnSubFinish7210317(arg1)
    print("OnSubFinish7210317")
end

function Quest72103:OnSubFailed7210317(arg1)
    print("OnSubFailed7210317")
end

function Quest72103:OnSubStart7210318(arg1)
    print("OnSubStart7210318")
end

function Quest72103:OnSubFinish7210318(arg1)
    print("OnSubFinish7210318")
end

function Quest72103:OnSubFailed7210318(arg1)
    print("OnSubFailed7210318")
end

return Quest72103
